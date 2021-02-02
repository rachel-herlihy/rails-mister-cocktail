class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def shows
    @cocktails = Cocktail.find(params[:id])
    @cocktails = Cocktail.new
  end
  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktails)
    else
      render "new"
    end
  end
end
