class CreateMunicipios < ActiveRecord::Migration
  def self.up
    create_table :municipios do |t|
      t.string :municipio
      t.references :estado
      t.string :estado

      t.timestamps
    end
  end

  def self.down
    drop_table :municipios
  end
end
