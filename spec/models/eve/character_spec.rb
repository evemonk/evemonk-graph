require 'rails_helper'

RSpec.describe Eve::Character, type: :model do
  it { expect(subject).to be_an(ApplicationRecord) }

  it { expect(described_class.table_name).to eq("eve_characters") }

  it { expect(subject).to belong_to(:alliance).optional(true) }

  it { expect(subject).to belong_to(:corporation).optional(true) }
end
