class WorkersController < ApplicationController
  def new
    @worker = Worker.new(:guid => params[:device_guid])
  end
end
