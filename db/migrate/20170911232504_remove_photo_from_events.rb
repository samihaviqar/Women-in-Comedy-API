class RemovePhotoFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :photo, :string
  end
end
