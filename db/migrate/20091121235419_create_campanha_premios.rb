class CreateCampanhaPremios < ActiveRecord::Migration
  def self.up
    create_table :campanha_premios do |t|
      t.references :campanha
      t.references :premio

      t.timestamps
    end
  end

  def self.down
    drop_table :campanha_premios
  end
end
