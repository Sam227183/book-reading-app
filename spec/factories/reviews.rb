FactoryBot.define do
  factory :review do
    body { "Great book!" }
    rating { 4 }
    status { :reading }
    association :user
    association :book
  end
end
