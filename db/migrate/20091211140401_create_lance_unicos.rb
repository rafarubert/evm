class CreateLanceUnicos < ActiveRecord::Migration
  def self.up
    create_table :lance_unicos do |t|
      t.references :premios
      t.date :data_inicio
      t.date :data_termino
      t.integer :quantidade

      t.timestamps
    end
  end

  def self.down
    drop_table :lance_unicos
  end
end
