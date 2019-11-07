class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to new_cocktail_path
  end

  def new
    @cocktail = Cocktail.new
  end
end
