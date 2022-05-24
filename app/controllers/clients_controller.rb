class ClientsController < ApplicationController
  before_action :set_client, only: %i[ edit update ]

  def index
    if params[:query].present?
      @clients = Client.where("first_name ILIKE ?", "%#{params[:query]}%")
    elsif params['/clients']
      @clients = params['/clients']['status'] == '1' ?  Client.done : Client.to_do
    else
      @clients = Client.all
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      @transaction = CallTransaction.new(client: @client, user: current_user, goal: current_user.goals.last, revenue: @client.revenue )
      if @transaction.save
        @client.done!
        flash[:notice] = "Appel et transaction bien sauvergardés"
        redirect_to clients_path
      else
        flash[:alert] =  "N'oublie pas de créer ton objectif" if @transaction.errors.full_messages.include?('Goal must exist')
        render :edit
      end  
    else
      flash[:alert] =  "Il te manque un champs à remplir"
      render :edit
    end
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end


  def client_params
    params.require(:client).permit(:id, :first_name, :first_name, :email, :phone_number, :department, :age, :revenue, :advisors_interested, :study_level)
  end

end
