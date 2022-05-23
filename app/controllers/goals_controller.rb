class GoalsController < ApplicationController
  before_action :set_goal, only: %i[ show edit update destroy ]

  def index
    @goals = Goal.all.where(user: current_user)
  end

  def show
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.update(end_date: @goal.start_date.end_of_month, user: current_user) 
    binding.pry
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end

  def edit
  end

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
    params.require(:goal).permit(:start_date, :end_date, :amount)
  end

end
