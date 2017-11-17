class ReadingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    device = Device.find(params[:device_id])
    Reading.create!(:device => device, :usage => params[:usage])
    head :ok
  end

  def index
    @readings = Reading.where(:device_id => params[:device_id])
  end
end
