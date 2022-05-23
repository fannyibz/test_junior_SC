class CallTransaction < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  belongs_to :client
end
