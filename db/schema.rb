# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091211131757) do

  create_table "agentes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanha_agentes", :force => true do |t|
    t.string   "nome"
    t.date     "inicio"
    t.date     "termino"
    t.text     "regulamento"
    t.integer  "pontos_venda"
    t.integer  "pontos_vendedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanha_premios", :force => true do |t|
    t.integer  "campanha_id"
    t.integer  "premio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanha_produtos", :force => true do |t|
    t.integer  "campanha_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanha_relacaos", :force => true do |t|
    t.integer  "campanha_id"
    t.integer  "vendedor_id"
    t.integer  "premio_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanha_vendedores", :force => true do |t|
    t.integer  "campanha_id"
    t.integer  "vendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campanhas", :force => true do |t|
    t.string   "titulo"
    t.date     "data_inicio"
    t.date     "data_termino"
    t.date     "data_troca"
    t.text     "regulamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distribuidores", :force => true do |t|
    t.string   "nome_fantasia"
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "cgf"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "cep"
    t.string   "bairro"
    t.integer  "municipio_id"
    t.string   "municipio"
    t.string   "estado"
    t.integer  "agente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "distribuidores", ["municipio_id"], :name => "distribuidores_fk"

  create_table "estados", :force => true do |t|
    t.string   "estado",     :limit => 150
    t.string   "sigla",      :limit => 10
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "lance_unico", :force => true do |t|
    t.integer  "premios_id"
    t.date     "data_inicio"
    t.date     "data_termino"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.string   "municipio",  :limit => 150
    t.integer  "estado_id",                 :null => false
    t.string   "estado",     :limit => 10
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "municipios", ["estado_id"], :name => "id_estado"

  create_table "premios", :force => true do |t|
    t.string   "premio"
    t.integer  "pontos"
    t.integer  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.integer  "codigo"
    t.string   "grupo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendedores", :force => true do |t|
    t.integer  "revenda_id",                                  :null => false
    t.integer  "estado_id",                                   :null => false
    t.integer  "municipio_id",                                :null => false
    t.string   "cpf",           :limit => 12
    t.string   "email",         :limit => 150,                :null => false
    t.string   "senha",         :limit => 32,                 :null => false
    t.string   "nome",          :limit => 150,                :null => false
    t.binary   "sexo",          :limit => 1
    t.string   "telefone",      :limit => 10,                 :null => false
    t.string   "celular",       :limit => 10
    t.string   "cidade",        :limit => 100,                :null => false
    t.string   "endereco",      :limit => 200,                :null => false
    t.string   "numero",        :limit => 20,                 :null => false
    t.string   "complemento",   :limit => 50,                 :null => false
    t.string   "bairro",        :limit => 50,                 :null => false
    t.string   "cep",           :limit => 8,                  :null => false
    t.date     "data_nasc",                                   :null => false
    t.integer  "ativo",         :limit => 2,   :default => 0
    t.datetime "data_cadastro"
    t.string   "cnpj_revenda",  :limit => 20
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "vendedores", ["estado_id"], :name => "vwestado_id"
  add_index "vendedores", ["municipio_id"], :name => "vwmunicipio_id"
  add_index "vendedores", ["revenda_id"], :name => "revenda_id"

  create_table "vendedores_rankings", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
