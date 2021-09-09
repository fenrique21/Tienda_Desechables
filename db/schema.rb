# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_09_155658) do

  create_table "detalle_compras", force: :cascade do |t|
    t.integer "cantidad", null: false
    t.float "precio", null: false
    t.integer "facturac_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "producto_id", null: false
    t.index ["facturac_id"], name: "index_detalle_compras_on_facturac_id"
    t.index ["producto_id"], name: "index_detalle_compras_on_producto_id"
  end

  create_table "detalle_venta", force: :cascade do |t|
    t.integer "cantidad", null: false
    t.float "precio", null: false
    t.float "descuento", null: false
    t.integer "producto_id", null: false
    t.integer "facturav_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facturav_id"], name: "index_detalle_venta_on_facturav_id"
    t.index ["producto_id"], name: "index_detalle_venta_on_producto_id"
  end

  create_table "facturacs", force: :cascade do |t|
    t.float "total", null: false
    t.date "fecha", null: false
    t.string "nfactura", null: false
    t.integer "proveedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proveedor_id"], name: "index_facturacs_on_proveedor_id"
  end

  create_table "facturavs", force: :cascade do |t|
    t.float "total", null: false
    t.date "fecha", null: false
    t.boolean "anulada", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer "cantidad", null: false
    t.float "precio", null: false
    t.integer "marca_id", null: false
    t.integer "tipo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_productos_on_marca_id"
    t.index ["tipo_id"], name: "index_productos_on_tipo_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "direccion", null: false
    t.string "telefono", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "codigo", null: false
    t.boolean "activo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
