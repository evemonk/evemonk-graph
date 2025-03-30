module Types
  module Eve
    class CharacterType < Types::BaseObject
      description "Eve Character object"

      field :id, ID,
        description: "Eve Character: ID",
        null: false

      # field :icon, EveCharacterIconType,
      #   description: "Eve Character: Icons",
      #   method: :itself,
      #   null: true

      field :alliance_id, Integer,
        description: "Eve Character: Eve Alliance ID",
        null: true

      field :alliance, Types::Eve::AllianceType,
        description: "Eve Character: Eve Alliance",
        null: true

      field :birthday, GraphQL::Types::ISO8601DateTime,
        description: "Eve Character: Birthday",
        null: true

      field :bloodline_id, Integer,
        description: "Eve Character: Eve Bloodline ID",
        null: true

      # field :bloodline, Types::Eve::BloodlineType,
      #   description: "Eve Character: Eve Bloodline",
      #   null: true

      field :corporation_id, Integer,
        description: "Eve Character: Eve Corporation ID",
        null: true

      field :corporation, Types::EveCorporationType,
        description: "Eve Character: Eve Corporation",
        null: true

      field :description, String,
        # method: :sanitized_description,
        description: "Eve Character: Description",
        null: true

      field :faction_id, Integer,
        description: "Eve Character: Eve Faction ID",
        null: true

      # field :faction, Types::Eve::FactionType,
      #   description: "Eve Character: Eve Faction",
      #   null: true

      # TODO: make this enum?
      field :gender, String,
        description: "Eve Character: Gender",
        null: true

      field :name, String,
        description: "Eve Character: Name",
        null: true

      field :race_id, Integer,
        description: "Eve Character: Eve Race ID",
        null: true

      # field :race, Types::Eve::RaceType,
      #   description: "Eve Character: Eve Race",
      #   null: true

      field :security_status, Float,
        description: "Eve Character: Security status",
        null: true

      field :title, String,
        description: "Eve Character: Title",
        null: true
    end
  end
end
