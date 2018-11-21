class Location < ApplicationRecord
  has_many :appliance, dependent: :destroy
  validates_presence_of :name
end
