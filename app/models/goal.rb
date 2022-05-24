class Goal < ApplicationRecord
  
  belongs_to :user
  has_many :call_transactions
  has_many :clients, through: :call_transactions

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :amount, presence: true, numericality: true

  def name
    "#{start_date.strftime('%B')} - #{start_date.strftime('%Y')}"
  end

  def calls_revenue
    call_transactions.pluck(:revenue).sum
  end

  def calls_revenue_percentage
    calls_revenue * 100 / amount
  end

end
