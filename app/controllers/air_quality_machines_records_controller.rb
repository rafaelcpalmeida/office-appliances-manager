class AirQualityMachinesRecordsController < ApplicationController
  def index
    @air_quality_machine_records = AirQualityMachineRecord.all
    json_response @air_quality_machine_records
  end

  def create
    @air_quality_machine_record = AirQualityMachineRecord.create! air_quality_machine_record_parameters
    json_response @air_quality_machine_record, :created
  end

  private

  def air_quality_machine_record_parameters
    params.permit :appliance_id, :temperature, :carbon_dioxide_level, :humidity_level
  end
end
