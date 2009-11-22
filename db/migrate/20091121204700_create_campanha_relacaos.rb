class CreateCampanhaRelacaos < ActiveRecord::Migration
  def self.up
    create_table :campanha_relacaos do |t|
      t.references :campanha
      t.references :vendedor
      t.references :premio
      t.references :produto

      t.timestamps
    end
  end

  def self.down
    drop_table :campanha_relacaos
  end
end
