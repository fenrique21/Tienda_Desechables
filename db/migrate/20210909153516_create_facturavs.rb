class CreateFacturavs < ActiveRecord::Migration[5.2]
  def change
    create_table :facturavs do |t|
      t.float :total, null: false
      t.date :fecha, null: false
      t.boolean :anulada, null: false 
      t.timestamps
    end
  end
end
