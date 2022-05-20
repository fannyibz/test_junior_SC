class Client < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :age, presence: true, numericality: true
  validates :revenu, presence: true, numericality: true
  validates :email, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
                    uniqueness: { case_sensitive: false },
                    presence: true,
                    length: { minimum: 4, maximum: 254 }
end
