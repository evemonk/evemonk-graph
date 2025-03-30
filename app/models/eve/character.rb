module Eve
  class Character < ApplicationRecord
    belongs_to :alliance, optional: true

    belongs_to :corporation, optional: true
  end
end
