class CreateProveedors < ActiveRecord::Migration[5.2]
  def change
    create_table :proveedors do |t|
      t.string :nombre, null: false
      t.string :direccion, null: false
      t.string :telefono, null: false
      t.timestamps
    end
  end
end
