class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.integer :cantidad, null: false
      t.float :precio, null: false
      t.references :marca, null: false, index: true
      t.references :tipo, null: false, index: true
      t.timestamps
    end
  end
end
