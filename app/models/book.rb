class Book < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  enum :genre, { programming: 0, history: 1, fiction: 2, science: 3, mystery: 4, etc: 5 }
end
