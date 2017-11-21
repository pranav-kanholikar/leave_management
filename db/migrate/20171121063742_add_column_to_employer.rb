class AddColumnToEmployer < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :user_id, :integer
  end
end
