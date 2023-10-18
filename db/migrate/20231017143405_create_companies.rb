class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :Ctitle
      t.boolean :trimed
      t.boolean :GrowersCup
      t.boolean :NaturesPath

      t.timestamps
    end
  end
end
