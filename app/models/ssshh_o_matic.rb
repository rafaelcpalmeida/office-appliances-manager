class SsshhOMatic < Appliance
  validates_presence_of :decibels_limit
  validate :appliance_type

  def appliance_type
    return if self.type == "SsshhOMatic"

    errors.add :appliance, 'is invalid.'
  end
end
