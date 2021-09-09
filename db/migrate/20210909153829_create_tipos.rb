class CreateTipos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipos do |t|
      t.string :nombre, null: false
      t.string :codigo, null: false
      t.boolean :activo, null: false

      t.timestamps
    end
  end
end
