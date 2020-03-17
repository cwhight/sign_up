class SignUpsController < ApplicationController
  def new
    @sign_up = SignUp.new
  end
end
