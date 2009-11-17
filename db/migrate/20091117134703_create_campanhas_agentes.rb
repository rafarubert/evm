class CreateCampanhasAgentes < ActiveRecord::Migration
  def self.up
    create_table :campanhas_agentes do |t|
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
    drop_table :campanhas_agentes
  end
end
