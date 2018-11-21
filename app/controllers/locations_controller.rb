class LocationsController < ApplicationController
  before_action :set_location, only: %i[show update destroy]

  def index
    @locations = Location.all
    json_response @locations
  end

  def create
    @location = Location.create! locations_parameters
    json_response @location, :created
  end

  def show
    json_response(@location)
  end

  def update
    @location.update locations_parameters
    json_response nil, :no_content
  end

  def destroy
    @location.destroy
    json_response nil, :no_content
  end

  private

  def locations_parameters
    params.permit :name
  end

  def set_location
    @location = Location.find(params[:id])
  end
end
