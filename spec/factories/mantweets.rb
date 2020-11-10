FactoryBot.define do
  factory :mantweet do
    title {Faker::Lorem.sentence}
    body {Faker::Lorem.sentence}
    image_id {Faker::Lorem.sentence}

    association :user 
  end
end
