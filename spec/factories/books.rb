FactoryBot.define do
  factory :book do
    title { "Test Book" }
    author { "Test Author" }
    genre { :fiction }
  end
end