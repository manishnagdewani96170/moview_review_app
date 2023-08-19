FactoryBot.define do
  factory :movie do
    name { 'Test' }
    description  { Faker::Lorem.words(number: rand(2..10)).join(' ') }
    director
    actor
    year { 2021 }
    filming_location { 'Los Vegas' }
    country { 'US' }
  end
end
