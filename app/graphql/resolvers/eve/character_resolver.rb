module Resolvers
  module Eve
    class CharacterResolver < BaseResolver
      type Types::Eve::CharacterType, null: false
      argument :id, ID

      def resolve(id:)
        ::Eve::Character.find(id)
      end
    end
  end
end
