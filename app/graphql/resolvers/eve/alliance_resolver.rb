module Resolvers
  module Eve
    class AllianceResolver < BaseResolver
      type Types::Eve::AllianceType, null: false
      argument :id, ID

      def resolve(id:)
        ::Eve::Alliance.find(id)
      end
    end
  end
end
