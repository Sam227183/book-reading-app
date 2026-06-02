class ChangeBookcoverDataTypeInBooks < ActiveRecord::Migration[8.1]
  def change
    change_column :books, :bookcover_data, :text
  end
end
