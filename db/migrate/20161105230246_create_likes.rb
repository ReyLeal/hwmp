class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :counter
      t.belongs_to :photo, foreign_key: true

      t.timestamps
    end
  end
end
