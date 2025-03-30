module Eve
  class Alliance < ApplicationRecord
    belongs_to :creator_corporation,
      class_name: "Eve::Corporation",
      optional: true

    belongs_to :executor_corporation,
      class_name: "Eve::Corporation",
      optional: true

    belongs_to :creator,
      class_name: "Eve::Character",
      optional: true

    has_many :corporations # rubocop:disable Rails/HasManyOrHasOneDependent

    has_many :characters, through: :corporations
  end
end
