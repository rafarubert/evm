class CreateCampanhaProdutos < ActiveRecord::Migration
  def self.up
    create_table :campanha_produtos do |t|
      t.references :campanha
      t.references :produto

      t.timestamps
    end
  end

  def self.down
    drop_table :campanha_produtos
  end
end
