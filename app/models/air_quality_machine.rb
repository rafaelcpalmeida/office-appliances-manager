class AirQualityMachine < Appliance
  validate :appliance_type

  def appliance_type
    return if self.type == "AirQualityMachine"

    errors.add :appliance, 'is invalid.'
  end
end
