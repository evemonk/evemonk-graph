module Eve
  class Alliance < ApplicationRecord
    belongs_to :creator_corporation,
      class_name: "Eve::Corporation",
      optional: true

    belongs_to :executor_corporation,
      class_name: "Eve::Corporation",
      optional: true

    has_many :corporations # rubocop:disable Rails/HasManyOrHasOneDependent
  end
end
