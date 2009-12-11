class CreateDistribuidores < ActiveRecord::Migration
  def self.up
    create_table :distribuidores do |t|
      t.string :nome_fantasia
      t.string :razao_social
      t.string :cnpj
      t.string :cgf
      t.string :endereco
      t.string :complemento
      t.string :cep
      t.string :bairro
      t.references :municipio
      t.string :municipio
      t.string :estado
      t.references :agente

      t.timestamps
    end
  end

  def self.down
    drop_table :distribuidores
  end
end
