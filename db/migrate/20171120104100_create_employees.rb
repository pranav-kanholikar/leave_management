class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.integer :emp_no
      t.date :date_of_joining
      t.date :date_of_termination
      t.string :department
      t.string :designation
      t.string :lead
      t.string :manager
      t.boolean :active

      t.timestamps
    end
  end
end
