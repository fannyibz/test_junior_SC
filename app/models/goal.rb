class Goal < ApplicationRecord
  
  belongs_to :user
  has_many :call_transactions
  has_many :clients, through: :call_transactions

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :amount, presence: true, numericality: true

end
