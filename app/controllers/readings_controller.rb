class ReadingsController < ApplicationController
  def create
    readings = params[:readings]
    device = Device.find(params[:device_id])
    readings.each do |r|
      Reading.create!(:device => device, :usage => usage)
    end
    head :ok
  end

  def index
    @readings = Reading.where(:device_id => params[:device_id])
  end
end
