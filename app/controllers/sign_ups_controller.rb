class SignUpsController < ApplicationController

  def new
    @sign_up = SignUp.new
  end

  def create
    @sign_up = SignUp.new(sign_up_params)
    if @sign_up.save
      redirect_to congratulations_path
    else
      render :new
    end
  end

  def congratulations
  end

  private

  def sign_up_params
    params.require(:sign_up).permit(:email, :employer)
  end
end
