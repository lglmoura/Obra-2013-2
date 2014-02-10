# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140210232113) do

  create_table "casafuncionarios", force: true do |t|
    t.integer  "casa_id"
    t.integer  "funcionario_id"
    t.date     "dataentrada"
    t.date     "datasaida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casafuncionarios", ["casa_id"], name: "index_casafuncionarios_on_casa_id"
  add_index "casafuncionarios", ["funcionario_id"], name: "index_casafuncionarios_on_funcionario_id"

  create_table "casas", force: true do |t|
    t.string   "rua"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.date     "datainicio"
    t.integer  "proprietario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casas", ["proprietario_id"], name: "index_casas_on_proprietario_id"

  create_table "funcaos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcioanarios", force: true do |t|
    t.string   "nome"
    t.string   "rua"
    t.string   "complemento"
    t.string   "sexo"
    t.integer  "funcao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcioanarios", ["funcao_id"], name: "index_funcioanarios_on_funcao_id"

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "rua"
    t.string   "complemento"
    t.string   "sexo"
    t.integer  "funcao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["funcao_id"], name: "index_funcionarios_on_funcao_id"

  create_table "proprietarios", force: true do |t|
    t.string   "nome"
    t.integer  "idade"
    t.string   "sexo"
    t.string   "rua"
    t.string   "numero"
    t.string   "complemento"
    t.string   "cpf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
