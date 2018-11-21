class SsshhOMaticsRecordsController < ApplicationController
  def index
    @ssshh_o_matic_records = SsshhOMaticRecord.all
    json_response @ssshh_o_matic_records
  end

  def create
    @air_quality_machine_record = SsshhOMaticRecord.create! ssshh_o_matic_record_parameters
    json_response @air_quality_machine_record, :created
  end

  private

  def ssshh_o_matic_record_parameters
    params.permit :appliance_id, :decibels_value
  end
end
