class AirQualityMachinesController < ApplicationController
  before_action :set_location, only: %i[create update]
  before_action :set_air_quality_machine, only: %i[show destroy]
  before_action :set_air_quality_machine_location, only: %i[update destroy]


  def index
    @air_quality_machines = AirQualityMachine.all
    json_response @air_quality_machines
  end

  def create
    @air_quality_machine = AirQualityMachine.create! air_quality_machine_parameters
    json_response @air_quality_machine, :created
  end

  def show
    json_response(@air_quality_machine)
  end

  def update
    @air_quality_machine.update air_quality_machine_parameters
    json_response nil, :no_content
  end

  def destroy
    @air_quality_machine.destroy
    json_response nil, :no_content
  end

  private

  def air_quality_machine_parameters
    params.permit :location_id, :name, :ip
  end

  def set_location
    @location = Location.find(params[:location_id])
  end

  def set_air_quality_machine
    @air_quality_machine = AirQualityMachine.find(params[:id])
  end

  def set_air_quality_machine_location
    @air_quality_machine = @location.air_quality_machine.find_by!(id: params[:id]) if @location
  end
end
