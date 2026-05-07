class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum :status, { want_to_read: 0, reading: 1, finished: 2 }

  scope :stale_reading, -> { reading.where("updated_at < ?", 3.days.ago) }
end
