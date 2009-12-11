class CreateVendedoresRankings < ActiveRecord::Migration
  def self.up
    create_table :vendedores_rankings do |t|
      t.string :nome
      t.string :email
      t.integer :ativo

      t.timestamps
    end
  end

  def self.down
    drop_table :vendedores_rankings
  end
end
