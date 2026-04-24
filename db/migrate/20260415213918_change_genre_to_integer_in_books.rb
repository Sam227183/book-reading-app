class ChangeGenreToIntegerInBooks < ActiveRecord::Migration[8.1]
  def change
    change_column :books, :genre, :integer
  end
end
