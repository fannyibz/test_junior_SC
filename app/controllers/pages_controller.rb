class PagesController < ApplicationController

  def home
    @goals = current_user.goals
    @goal = current_user.goals.find_by(active: true)
    @revenue = @goal.calls_revenue
    @percentage = @goal.calls_revenue_percentage
  end
  
end
