class CreateFacturacs < ActiveRecord::Migration[5.2]
  def change
    create_table :facturacs do |t|
      t.float :total, null: false
      t.date :fecha, null: false
      t.string :nfactura, null: false
      t.references :proveedor, null: false, index: true

      t.timestamps
    end
  end
end
