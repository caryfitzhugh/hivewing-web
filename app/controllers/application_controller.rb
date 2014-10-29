class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_beekeeper!

  protected

  def  requires_admin!
    current_beekeper.is_admin?
  end
end
