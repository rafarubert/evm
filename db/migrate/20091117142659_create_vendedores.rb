class CreateVendedores < ActiveRecord::Migration
  def self.up
    create_table :vendedores do |t|
      t.string :nome
      t.integer :cpf
      t.string :email
      t.string :sexo
      t.string :telefone
      t.string :celular
      t.string :cidade
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.integer :cep
      t.date :data_nasc
      t.integer :ativo
      t.date :data_cadastro
      t.integer :cnpj_revenda
      t.references :revenda
      t.references :estado
      t.references :municipio

      t.timestamps
    end
  end

  def self.down
    drop_table :vendedores
  end
end
