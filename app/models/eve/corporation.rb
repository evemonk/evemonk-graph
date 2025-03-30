module Eve
  class Corporation < ApplicationRecord
    belongs_to :alliance, optional: true
  end
end
