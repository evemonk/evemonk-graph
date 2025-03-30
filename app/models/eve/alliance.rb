module Eve
  class Alliance < ApplicationRecord
    has_many :corporations # rubocop:disable Rails/HasManyOrHasOneDependent
  end
end
