class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.boolean :admin
      t.boolean :salesman
      t.boolean :accountant
      t.boolean :storekeeper
      t.boolean :designer
      t.boolean :imports
      t.boolean :constractions
      t.boolean :headofDesign
      t.boolean :headofSales
      t.boolean :headofStorehouse
      t.boolean :headofImports
      t.boolean :headofConstractions
      t.string :roleDescription
      t.boolean :printer

      t.timestamps
    end
  end
end
