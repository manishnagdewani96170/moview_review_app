FactoryBot.define do
  factory :review do
    movie
    user
    rating { 1 }
    comment { Faker::Lorem.words(number: rand(2..10)).join(' ') }
  end
end
