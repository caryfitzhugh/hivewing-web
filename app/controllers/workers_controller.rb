class WorkersController < ApplicationController
  skip_before_filter :authenticate_beekeeper!, :only => [:new]

  def new
    @worker = Worker.new(:guid => params[:worker_guid])
  end
end
