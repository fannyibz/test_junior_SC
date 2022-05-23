FactoryBot.define do
  factory :goal do
    start_date { Date.today.beginning_of_month }
    end_date { Date.today.end_of_month }
    amount { 600 }
    user { User.first }
  end
end
