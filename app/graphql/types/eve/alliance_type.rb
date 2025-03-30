# frozen_string_literal: true

module Types
  module Eve
    class AllianceType < Types::BaseObject
      field :id, ID, null: false
      field :name, String
      field :ticker, String
      field :creator_corporation_id, Integer
      field :creator_id, Integer
      field :date_founded, GraphQL::Types::ISO8601DateTime
      field :executor_corporation_id, Integer
      field :faction_id, Integer
      field :corporations_count, Integer
      field :characters_count, Integer
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
