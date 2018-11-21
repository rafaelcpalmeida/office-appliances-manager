class Appliance < ApplicationRecord
  belongs_to :location
  has_many :appliance_records
  validates_presence_of :name, :ip
end
