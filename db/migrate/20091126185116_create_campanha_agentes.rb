class CreateCampanhaAgentes < ActiveRecord::Migration
  def self.up
    create_table :campanha_agentes do |t|
      t.string :nome
      t.date :inicio
      t.date :termino
      t.text :regulamento
      t.integer :pontos_venda
      t.integer :pontos_vendedor

      t.timestamps
    end
  end

  def self.down
    drop_table :campanha_agentes
  end
end
