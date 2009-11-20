class CreateCampanhas < ActiveRecord::Migration
  def self.up
    create_table :campanhas do |t|
      t.string :titulo
      t.date :data_inicio
      t.date :data_fim
      t.date :data_troca
      t.text :regulamento
      t.integer :lance_unico
      t.integer :quiz
      t.integer :temporaria

      t.timestamps
    end
  end

  def self.down
    drop_table :campanhas
  end
end
