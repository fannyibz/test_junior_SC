FactoryBot.define do
  factory :client do
    first_name{ Faker::Name.first_name  }
    last_name { Faker::Name.last_name  }
    phone_number { Faker::PhoneNumber.phone_number_with_country_code }
    email { Faker::Internet.email }
    department { Faker::Number.digits(5) }
    age { Faker::Internet.email }
    revenue { Faker::Number.decimal(digits: 2, l_digits: 1) }
    study_level { 'bachelor' }
  end
end