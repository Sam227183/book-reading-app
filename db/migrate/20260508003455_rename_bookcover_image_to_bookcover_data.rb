class RenameBookcoverImageToBookcoverData < ActiveRecord::Migration[8.1]
  def change
    rename_column :books, :bookcover_image, :bookcover_data
  end
end
