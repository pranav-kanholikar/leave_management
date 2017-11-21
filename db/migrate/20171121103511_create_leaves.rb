class CreateLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :leaves do |t|
      t.integer :employee_id
      t.date :leave_from_date
      t.date :leave_to_date
      t.text :reason
      t.integer :no_of_days

      t.timestamps
    end
  end
end
