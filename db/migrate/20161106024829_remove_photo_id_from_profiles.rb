class RemovePhotoIdFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :photo_counter
  end
end
