class AddColumnsToReviews < ActiveRecord::Migration[8.1]
  def change
    add_column :reviews, :status, :integer
    add_column :reviews, :rating, :integer
    add_column :reviews, :current_page, :integer
  end
end
