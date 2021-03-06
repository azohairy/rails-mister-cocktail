class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.order(id: :desc)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.all
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
