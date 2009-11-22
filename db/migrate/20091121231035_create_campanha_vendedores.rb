class CreateCampanhaVendedores < ActiveRecord::Migration
  def self.up
    create_table :campanha_vendedores do |t|
      t.references :campanha
      t.references :vendedor

      t.timestamps
    end
  end

  def self.down
    drop_table :campanha_vendedores
  end
end
