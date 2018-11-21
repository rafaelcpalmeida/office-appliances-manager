require 'rails_helper'

RSpec.describe AirQualityMachineRecord, type: :model do
  it { should belong_to(:appliance) }

  subject {
    described_class.new(appliance: (AirQualityMachine.new location: Location.new(name: '3.19'), name: Faker::Appliance.equipment,
                                                  ip: Faker::Internet.ip_v4_address),
                        temperature: Faker::Number.number(2), carbon_dioxide_level: Faker::Number.number(2),
                        humidity_level: Faker::Number.number(2))
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a temperature value' do
    subject.temperature = nil
    expect(subject).to be_invalid
  end

  it 'is not valid without a carbon dioxide level value' do
    subject.carbon_dioxide_level = nil
    expect(subject).to be_invalid
  end

  it 'is not valid without a humidity level value' do
    subject.humidity_level = nil
    expect(subject).to be_invalid
  end
end
