class ApplicationController < ActionController::Base

  include Pundit

  # Pundit: white-list approach.

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end



  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
