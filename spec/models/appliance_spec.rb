require 'rails_helper'

RSpec.describe Appliance, type: :model do
  it { should belong_to(:location) }
  it { should have_many(:appliance_records) }

  subject {
    described_class.new(location: Location.new(name: '3.19'), name: Faker::Appliance.equipment, ip: Faker::Internet.ip_v4_address)
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a location' do
    subject.location = nil
    expect(subject).to be_invalid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to be_invalid
  end

  it 'is not valid without an ip' do
    subject.ip = nil
    expect(subject).to be_invalid
  end
end
