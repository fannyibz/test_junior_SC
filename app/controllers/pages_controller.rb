class PagesController < ApplicationController

  def home
    if params['/'].present?
      date = build_date_from_params('start_date', params['/'])
      @month = date.strftime("%B")
      @revenue = current_user.call_transactions.where('extract(month from created_at) = ?', date.month).pluck(:revenue).sum
    end
    @goal= current_user.goals.find_by(active: true)
  end
  
end
