class SignUpsController < ApplicationController

  def new
    @sign_up = SignUp.new
  end

  def create
    @sign_up = SignUp.new(sign_up_params)

    sector_ids = params[:sign_up][:sector_ids].drop(1)
    sectors = sector_ids.map do |element|
      Sector.find(element)
    end
    @sign_up.sectors = sectors

    if @sign_up.save
      redirect_to congratulations_path
    else
      render :new
    end
  end

  def congratulations
  end

  def job_seeker
    @sign_up = SignUp.new
  end

  def job_provider
    @sign_up = SignUp.new
  end

  private

  def sign_up_params
    params.require(:sign_up).permit(:email, :employer, :rep, :sector_ids)
  end
end
