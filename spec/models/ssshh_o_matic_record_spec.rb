require 'rails_helper'

RSpec.describe SsshhOMaticRecord, type: :model do
  it { should belong_to(:appliance) }

  subject {
    described_class.new(appliance: (SsshhOMatic.new location: Location.new(name: '3.19'), name: Faker::Appliance.equipment,
                                                  ip: Faker::Internet.ip_v4_address, decibels_limit: Faker::Number.number(2)),
                        decibels_value: Faker::Number.number(2))
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a decibels value' do
    subject.decibels_value = nil
    expect(subject).to be_invalid
  end
end
