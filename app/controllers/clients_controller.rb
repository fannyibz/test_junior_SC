class ClientsController < ApplicationController
  before_action :set_client, only: %i[ edit update ]

  def index
    if params[:query].present?
      @clients = Client.where("first_name ILIKE ?", "%#{params[:query]}%")
    else
      @clients = Client.all
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      CallTransaction.create(client: @client, user: current_user, goal: current_user.goals.last, revenue: @client.revenue )
      @client.done!
      redirect_to clients_path
    else
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
