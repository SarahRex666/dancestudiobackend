class CreateDanceClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :dance_classes do |t|
      t.string "name"
      t.string "style"
      t.string "description"
      t.string "time"
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
