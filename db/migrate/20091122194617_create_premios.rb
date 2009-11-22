class CreatePremios < ActiveRecord::Migration
  def self.up
    create_table :premios do |t|
      t.string :premio
      t.integer :pontos
      t.integer :ativo

      t.timestamps
    end
  end

  def self.down
    drop_table :premios
  end
end
