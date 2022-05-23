class PagesController < ApplicationController

  def home
    @goal= current_user.goals.last
  end
  
end
