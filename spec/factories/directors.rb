FactoryBot.define do
  factory :director do
    name { Faker::Internet.user_name }
  end
end
