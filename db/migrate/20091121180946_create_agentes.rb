class CreateAgentes < ActiveRecord::Migration
  def self.up
    create_table :agentes do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :agentes
  end
end
