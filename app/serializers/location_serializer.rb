class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :active_devices

  def active_devices
    object.appliance.count
  end
end
