class AirQualityMachineSerializer < ActiveModel::Serializer
  include AppliancesMutualFields

  attributes :id, :location, :name, :ip, :registered_at
end
