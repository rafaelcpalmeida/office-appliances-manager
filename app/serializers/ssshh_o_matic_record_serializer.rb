class SsshhOMaticRecordSerializer < ActiveModel::Serializer
  include AppliancesRecordsMutualFields

  attributes :id, :location, :name, :decibels_value, :registered_at
end
