module AppliancesMutualFields
  def location
    Location.find_by(id: object.location_id).name
  end

  def registered_at
    object.created_at.strftime('%F %T')
  end
end