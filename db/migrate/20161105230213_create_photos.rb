class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :image
      t.belongs_to :profile, foreign_key: true

      t.timestamps
    end
  end
end
