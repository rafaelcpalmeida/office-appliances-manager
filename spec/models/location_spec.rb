require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should have_many(:appliance) }

  subject {
    described_class.new(name: '3.19')
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to be_invalid
  end
end
