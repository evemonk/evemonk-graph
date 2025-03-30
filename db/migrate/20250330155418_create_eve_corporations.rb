class CreateEveCorporations < ActiveRecord::Migration[8.0]
  def change
    create_table :eve_corporations do |t|
      t.bigint :alliance_id
      t.bigint :ceo_id
      t.bigint :creator_id
      t.datetime :date_founded
      t.text :description
      t.bigint :faction_id
      t.bigint :home_station_id
      t.integer :member_count
      t.string :name
      t.bigint :shares
      t.float :tax_rate
      t.string :ticker
      t.text :corporation_url
      t.boolean :war_eligible
      t.boolean :npc, default: false

      t.timestamps

      t.index :alliance_id
      t.index :ceo_id
      t.index :creator_id
      t.index :faction_id
      t.index :home_station_id
      t.index :member_count
      t.index :name
    end
  end
end
