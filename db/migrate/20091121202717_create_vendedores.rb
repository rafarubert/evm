class CreateVendedores < ActiveRecord::Migration
  def self.up
    create_table :vendedores do |t|
      t.references :revenda
      t.references :estado
      t.references :municipio
      t.string :cpf
      t.string :email
      t.string :senha
      t.string :nome
      t.integer :sexo
      t.string :telefone
      t.string :celular
      t.string :cidade
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :cep
      t.date :data_nasc
      t.integer :ativo
      t.date :data_cadastro
      t.string :cnpj_revenda

      t.timestamps
    end
  end

  def self.down
    drop_table :vendedores
  end
end
