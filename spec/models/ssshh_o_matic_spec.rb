require 'rails_helper'

RSpec.describe SsshhOMatic, type: :model do
  subject {
    described_class.new(location: Location.new(name: '3.19'), name: Faker::Appliance.equipment,
                                        ip: Faker::Internet.ip_v4_address, decibels_limit: Faker::Number.number(2))
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a decibels limit' do
    subject.decibels_limit = nil
    expect(subject).to be_invalid
  end
end
