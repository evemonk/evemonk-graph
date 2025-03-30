# frozen_string_literal: true

module Types
  module Eve
    class CorporationType < Types::BaseObject
      description "Eve Corporation object"

      field :id, ID,
        description: "Eve Corporation ID",
        null: false

      field :alliance_id, Integer,
        description: "Alliance ID",
        null: true

      field :alliance, Types::Eve::AllianceType,
        description: "Eve Alliance",
        null: true

      field :ceo_id, Integer,
        description: "CEO ID (Character ID)",
        null: true

      # field :ceo, Types::EveCharacterType,
      #   description: "CEO (Character)",
      #   null: true

      field :creator_id, Integer,
        description: "Creator ID (Character ID)",
        null: true

      # field :creator, Types::Eve::CharacterType,
      #   description: "Creator (Character)",
      #   null: true

      field :date_founded, GraphQL::Types::ISO8601DateTime,
        description: "Eve Corporation Date founded",
        null: true

      field :description, String,
        # method: :sanitized_description,
        description: "Description",
        null: true

      field :faction_id, Integer,
        description: "Eve Faction ID",
        null: true

      # field :faction, Types::EveFactionType,
      #   description: "Faction",
      #   null: true

      field :home_station_id, Integer,
        description: "Home station ID (Station ID)",
        null: true

      # field :home_station, Types::EveStationType,
      #   description: "Home station (Station)",
      #   null: true

      field :member_count, Integer,
        description: "Member count",
        null: true

      field :name, String,
        description: "Eve Corporation Name",
        null: true

      field :shares, GraphQL::Types::BigInt,
        description: "Eve Corporation Shares",
        null: true

      field :tax_rate, Float,
        description: "Eve Corporation Tax rate",
        null: true

      field :ticker, String,
        description: "Eve Corporation Ticker",
        null: true

      field :url, String,
        # method: :corporation_url,
        description: "Eve Corporation URL",
        null: true

      field :war_eligible, Boolean,
        description: "Eve Corporation War eligible",
        null: true

      field :npc, Boolean,
        description: "Eve Corporation NPC?",
        null: true

      # field :characters, Types::EveCharacterType.connection_type,
      #   description: "Characters collection",
      #   null: true

      # TODO: :corporation_alliance_histories
      # field :history
      # TODO: :standings
      # TODO: :loyalty_store_offers
      # field :loyalty_store_offers
    end
  end
end
