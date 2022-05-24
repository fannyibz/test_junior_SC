class GoalsController < ApplicationController
  before_action :set_goal, only: %i[ show edit update destroy ]

  def index
    @goals = Goal.all.where(user: current_user)
    if params['/goals'].present?
      @selected_revenue = Goal.find(params['/goals']['goal']).calls_revenue
      @selected_period = Goal.find(params['/goals']['goal']).name
    end
  end

  def show
    @revenue = @goal.calls_revenue
    @missing_revenue = @goal.amount - @revenue
    @percentage = @revenue * 100 / @goal.amount
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.update(end_date: @goal.start_date.end_of_month, user: current_user) 
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @goal.update(goal_params)
      @goal.done!
      redirect_to goals_path
    else
      render :edit
    end
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:start_date, :amount, :active)
  end

end
