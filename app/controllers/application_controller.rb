class ApplicationController < ActionController::Base


  private



  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
