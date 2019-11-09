class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id].to_i
    @dose.save!
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id].to_i)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
