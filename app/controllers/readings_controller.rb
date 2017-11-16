class ReadingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    readings = params[:readings]
    device = Device.find(params[:device_id])
    readings.each do |r|
      Reading.create!(:device => device, :usage => r)
    end
    head :ok
  end

  def index
    @readings = Reading.where(:device_id => params[:device_id])
  end
end
