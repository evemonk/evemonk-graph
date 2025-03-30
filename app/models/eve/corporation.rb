module Eve
  class Corporation < ApplicationRecord
    belongs_to :alliance, optional: true

    counter_culture :alliance
  end
end
