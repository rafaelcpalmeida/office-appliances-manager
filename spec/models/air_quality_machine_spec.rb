require 'rails_helper'

RSpec.describe AirQualityMachine, type: :model do
  subject {
    described_class.new(location: Location.new(name: '3.19'), name: Faker::Appliance.equipment,
                        ip: Faker::Internet.ip_v4_address)
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end
