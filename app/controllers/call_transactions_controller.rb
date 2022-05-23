class CallTransactionsController < ApplicationController
  
  def index
    if params[:query].present?
      date = build_date_from_params('start_date', params['/'])
      @month = date.strftime("%B")
      @call_transactions= current_user.call_transactions.where('extract(month from created_at) = ?', date.month)
    else
      @call_transactions = current_user.call_transactions
    end
  end

end
