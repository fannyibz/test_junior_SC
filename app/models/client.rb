class Client < ApplicationRecord

  has_one :call_transaction

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :age, presence: true, numericality: true
  validates :revenue, presence: true, numericality: true
  validates :email, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
                    uniqueness: { case_sensitive: false },
                    presence: true,
                    length: { minimum: 4, maximum: 254 }

  enum status: [:to_do, :done]
end
