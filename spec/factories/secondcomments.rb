FactoryBot.define do
  factory :secondcomment do
    text {Faker::Lorem.sentence}

    association :user
    association :womantweet
  end
end
