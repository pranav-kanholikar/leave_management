class RemoveColumnFromEmployee < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :user_id, :string
  end
end
