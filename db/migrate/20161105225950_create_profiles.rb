class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :website
      t.string :email
      t.text :bio
      t.string :instagram
      t.string :twitter
      t.integer :photo_counter
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
