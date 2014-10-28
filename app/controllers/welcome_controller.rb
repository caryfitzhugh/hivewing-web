class WelcomeController < ApplicationController
  skip_before_filter :authenticate_beekeeper!
  def index
    if (current_beekeeper)
      redirect_to apiary_path
    end
  end
end
