class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.belongs_to :role, null: false, foreign_key: true
      t.belongs_to :department, null: false, foreign_key: true
      t.text :employeeName
      t.text :employeeEmail
      t.text :employeeMobile
      t.date :employeeStartDate
      t.date :employeeEndDate
      t.boolean :employeeStatus
      t.text :employeeComments
      t.text :carNumber

      t.timestamps
    end
  end
end
