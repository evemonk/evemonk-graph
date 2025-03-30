class CreateEveCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :eve_characters do |t|
      t.bigint :alliance_id
      t.datetime :birthday
      t.bigint :bloodline_id
      t.bigint :corporation_id
      t.text :description
      t.bigint :faction_id
      t.string :gender
      t.string :name
      t.bigint :race_id
      t.float :security_status
      t.string :title

      t.timestamps

      t.index :alliance_id
      t.index :bloodline_id
      t.index :corporation_id
      t.index :faction_id
      t.index :race_id
    end
  end
end
