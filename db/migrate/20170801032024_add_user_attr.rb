class AddUserAttr < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :about, :text
    add_column :users, :website, :string
  end
end
