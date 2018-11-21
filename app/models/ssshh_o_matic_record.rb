class SsshhOMaticRecord < ApplianceRecord
  validates_presence_of :decibels_value
  validate :appliance_type

  def appliance_type
    return if self.appliance.type == "SsshhOMatic"

    errors.add :appliance, 'is invalid.'
  end
end
