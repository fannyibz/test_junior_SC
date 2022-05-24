class CallTransactionsController < ApplicationController
  
  def index
    @goals = current_user.goals
    if params['/call_transaction'].present? && params['/call_transaction']['goal'].present?
      @call_transactions = Goal.find(params['/call_transaction']['goal']).call_transactions
    else
      @call_transactions = current_user.call_transactions
    end
  end

end
