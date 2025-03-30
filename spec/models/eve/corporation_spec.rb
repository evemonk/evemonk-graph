require "rails_helper"

RSpec.describe Eve::Corporation, type: :model do
  it { expect(subject).to be_an(ApplicationRecord) }

  it { expect(described_class.table_name).to eq("eve_corporations") }

  it { expect(subject).to belong_to(:alliance).optional(true) }
end
