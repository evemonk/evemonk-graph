class CreateEveAlliances < ActiveRecord::Migration[8.0]
  def change
    create_table :eve_alliances do |t|
      t.bigint :creator_corporation_id
      t.bigint :creator_id
      t.datetime :date_founded
      t.bigint :executor_corporation_id
      t.bigint :faction_id
      t.string :name
      t.string :ticker
      t.bigint :corporations_count, default: 0
      t.bigint :characters_count, default: 0

      t.timestamps

      t.index :characters_count
      t.index :creator_corporation_id
      t.index :creator_id
      t.index :executor_corporation_id
      t.index :faction_id
      t.index :name
    end
  end
end
