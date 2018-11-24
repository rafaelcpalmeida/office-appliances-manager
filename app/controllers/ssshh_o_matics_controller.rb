class SsshhOMaticsController < ApplicationController
  before_action :set_location, only: %i[create update]
  before_action :set_ssshh_o_matic, only: %i[show destroy]
  before_action :set_ssshh_o_matic_location, only: %i[update destroy]

  def index
    @ssshh_o_matics = SsshhOMatic.all
    json_response @ssshh_o_matics
  end

  def create
    @ssshh_o_matic = SsshhOMatic.create! ssshh_o_matic_parameters
    json_response @ssshh_o_matic, :created
  end

  def show
    json_response(@ssshh_o_matic)
  end

  def update
    @ssshh_o_matic.update ssshh_o_matic_parameters
    json_response nil, :no_content
  end

  def destroy
    @ssshh_o_matic.destroy
    json_response nil, :no_content
  end

  private

  def ssshh_o_matic_parameters
    params.permit :location_id, :name, :ip, :decibels_limit
  end

  def set_location
    @location = Location.find(params[:location_id])
  end

  def set_ssshh_o_matic
    @ssshh_o_matic = SsshhOMatic.find(params[:id])
  end

  def set_ssshh_o_matic_location
    @ssshh_o_matic = @location.appliance.find_by!(id: params[:id]) if @location
  end
end
