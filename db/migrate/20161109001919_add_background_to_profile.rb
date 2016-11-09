class AddBackgroundToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :background, :string
  end
end
