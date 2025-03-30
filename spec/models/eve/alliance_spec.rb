require "rails_helper"

RSpec.describe Eve::Alliance, type: :model do
  it { expect(subject).to be_an(ApplicationRecord) }

  it { expect(described_class.table_name).to eq("eve_alliances") }

  it { expect(subject).to have_many(:corporations) }
end
