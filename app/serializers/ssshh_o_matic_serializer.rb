class SsshhOMaticSerializer < ActiveModel::Serializer
  include AppliancesMutualFields

  attributes :id, :location, :name, :ip, :decibels_limit, :registered_at
end
