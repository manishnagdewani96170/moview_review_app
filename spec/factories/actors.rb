FactoryBot.define do
  factory :actor do
    name { Faker::Internet.user_name }
  end
end
