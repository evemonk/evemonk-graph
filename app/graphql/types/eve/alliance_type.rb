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
        description: "Eve Alliance: Creator Corporation ID (Corporation ID)",
        null: true

      # field :creator_corporation, Types::EveCorporationType,
      #   description: "Creator Corporation (Corporation)",
      #   null: true

      field :creator_id, Integer,
        description: "Eve Alliance: Creator ID (Character ID)",
        null: true

      # field :creator, Types::EveCharacterType,
      #   description: "Creator (Character)",
      #   null: true

      field :executor_corporation_id, Integer,
        description: "Eve Alliance: Executor Corporation ID (Corporation ID)",
        null: true

      # field :executor_corporation, Types::EveCorporationType,
      #   description: "Executor Corporation (Corporation)",
      #   null: true

      field :faction_id, Integer,
        description: "Eve Alliance: Eve Faction ID",
        null: true

      # field :faction, Types::EveFactionType,
      #   description: "Faction",
      #   null: true

      field :corporations_count, Integer,
        description: "Eve Alliance: Corporations count",
        null: true

      field :characters_count, Integer,
        description: "Eve Alliance: Characters count",
        null: true

      field :corporations, Types::Eve::CorporationType.connection_type,
        description: "Eve Alliance: Corporations collection",
        null: true

      # field :characters, Types::EveCharacterType.connection_type,
      #   description: "Characters collection",
      #   null: true

      # field :synced_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
