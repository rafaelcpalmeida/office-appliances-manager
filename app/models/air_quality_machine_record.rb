class AirQualityMachineRecord < ApplianceRecord
  validates_presence_of :temperature, :carbon_dioxide_level, :humidity_level
  validate :appliance_type

  def appliance_type
    return if self.appliance.type == "AirQualityMachine"

    errors.add :appliance, 'is invalid.'
  end
end
