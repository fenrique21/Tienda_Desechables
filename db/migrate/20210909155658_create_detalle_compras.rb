class CreateDetalleCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_compras do |t|
      t.integer :cantidad, null: false
      t.float :precio, null: false
      t.references :facturac, null: false, index: true
      t.references :producto, null: false, index:
      t.timestamps
    end
  end
end
