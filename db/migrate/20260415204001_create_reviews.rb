class CreateReviews < ActiveRecord::Migration[8.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.text :body
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
