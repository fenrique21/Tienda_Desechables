class CreateDetalleVenta < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_venta do |t|
      t.integer :cantidad, null: false
      t.float :precio, null: false
      t.float :descuento, null: false
      t.references :producto, null: false, index: true
      t.references :facturav, null: false, index: true
      t.timestamps
    end
  end
end
