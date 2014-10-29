class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_beekeeper!

  protected

  def authenticate_admin_beekeeper!
    requires_admin!
  end

  def  requires_admin!
    current_beekeeper && current_beekeeper.is_admin?
  end
end
