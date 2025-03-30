module Eve
  class Corporation < ApplicationRecord
    belongs_to :alliance, optional: true

    counter_culture :alliance

    has_many :characters # rubocop:disable Rails/HasManyOrHasOneDependent
  end
end
