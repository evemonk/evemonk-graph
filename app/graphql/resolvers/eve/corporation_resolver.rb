module Resolvers
  module Eve
    class CorporationResolver < BaseResolver
      type Types::Eve::CorporationType, null: false
      argument :id, ID

      def resolve(id:)
        ::Eve::Corporation.find(id)
      end
    end
  end
end
