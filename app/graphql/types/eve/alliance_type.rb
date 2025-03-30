# frozen_string_literal: true

module Types
  module Eve
    class AllianceType < Types::BaseObject
      description "Eve Alliance object"

      field :id, ID,
        description: "Eve Alliance: ID",
        null: false

      field :name, String,
        description: "Eve Alliance: Name",
        null: true

      field :ticker, String,
        description: "Eve Alliance: Ticker",
        null: true

      field :date_founded, GraphQL::Types::ISO8601DateTime,
        description: "Eve Alliance: Date founded",
        null: true

      field :creator_corporation_id, Integer,
        description: "Eve Alliance: Creator Corporation ID (Eve Corporation ID)",
        null: true

      field :creator_corporation, Types::Eve::CorporationType,
        description: "Eve Alliance: Creator Corporation (Eve Corporation)",
        null: true

      field :creator_id, Integer,
        description: "Eve Alliance: Creator ID (Eve Character ID)",
        null: true

      field :creator, Types::Eve::CharacterType,
        description: "Eve Alliance: Creator (Eve Character)",
        null: true

      field :executor_corporation_id, Integer,
        description: "Eve Alliance: Executor Corporation ID (Eve Corporation ID)",
        null: true

      field :executor_corporation, Types::Eve::CorporationType,
        description: "Eve Alliance: Executor Corporation (Eve Corporation)",
        null: true

      field :faction_id, Integer,
        description: "Eve Alliance: Eve Faction ID",
        null: true

      # field :faction, Types::Eve::FactionType,
      #   description: "Eve Faction",
      #   null: true

      field :corporations_count, Integer,
        description: "Eve Alliance: Eve Corporations count",
        null: true

      field :characters_count, Integer,
        description: "Eve Alliance: Eve Characters count",
        null: true

      field :corporations, Types::Eve::CorporationType.connection_type,
        description: "Eve Alliance: Eve Corporations collection",
        null: true

      field :characters, Types::Eve::CharacterType.connection_type,
        description: "Eve Alliance: Eve Characters collection",
        null: true

      # field :synced_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
