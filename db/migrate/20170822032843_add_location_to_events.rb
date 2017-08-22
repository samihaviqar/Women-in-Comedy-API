class AddLocationToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :location, :string
    add_column :events, :time, :string
  end
end
