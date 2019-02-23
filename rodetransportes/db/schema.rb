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

ActiveRecord::Schema.define(version: 2019_02_23_181950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "telefone"
    t.string "celular"
    t.string "email"
    t.string "emailextra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colaboradors", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.string "celular"
    t.string "whatsapp"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estoques", force: :cascade do |t|
    t.string "veiculo"
    t.string "placa"
    t.string "cor"
    t.string "ano"
    t.string "chassi"
    t.string "chave"
    t.string "funciona"
    t.string "banco"
    t.string "dataentrada"
    t.string "reboque"
    t.string "enderecocoleta"
    t.string "tipoentrada"
    t.string "datasaida"
    t.string "local"
    t.string "situacao"
    t.string "transportado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frota", force: :cascade do |t|
    t.string "modelo"
    t.string "placa"
    t.string "renavan"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terceirizados", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "rg"
    t.string "celular"
    t.string "email"
    t.string "caminhao"
    t.string "placacaminhao"
    t.string "renavancaminhao"
    t.string "cegonha"
    t.string "placacegonha"
    t.string "renavancegonha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
