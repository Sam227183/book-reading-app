class Book < ApplicationRecord
  include CoverUploader::Attachment(:bookcover)

  after_commit :create_cover_derivatives, on: [ :create, :update ]

  has_many :reviews
  has_many :users, through: :reviews

  enum :genre, { programming: 0, history: 1, fiction: 2, science: 3, mystery: 4, etc: 5 }

  private

  # Add thumbnail resolution images
  def create_cover_derivatives
    if bookcover_attacher.stored?
      bookcover_attacher.create_derivatives
      update_column(:bookcover_data, bookcover_attacher.column_data)
    end
  end
end
