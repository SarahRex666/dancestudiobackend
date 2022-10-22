class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :teacher
      t.string "content"
      t.integer "rating"

      t.timestamps
    end
  end
end
