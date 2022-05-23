FactoryBot.define do
  factory :transaction do
    user { User.first }
    client { Client.first }
    goal { Goal.first }
  end
end
