module AppliancesRecordsMutualFields
  def name
    object.appliance.name
  end

  def location
    Location.find_by(id: object.appliance.location_id).name
  end

  def registered_at
    object.created_at.strftime('%F %T')
  end
end