class AirQualityMachineRecordSerializer < ActiveModel::Serializer
  include AppliancesRecordsMutualFields

  attributes :id, :location, :name, :temperature, :carbon_dioxide_level, :humidity_level, :registered_at
end
