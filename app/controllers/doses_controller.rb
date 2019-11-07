class DosesController < ApplicationController
  def create
    @dose = Dose.create(dose_params)
    redirect_to new_cocktail_dose_path(params[:cocktail_id])
  end

  def new
    @dose = Dose.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end
end
