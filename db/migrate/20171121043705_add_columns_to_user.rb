class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phn_no, :string
    add_column :users, :role, :string
    add_column :users, :address, :text
    add_column :users, :active, :boolean, :default => true
    add_column :users, :date_of_birth, :date
  end
end
