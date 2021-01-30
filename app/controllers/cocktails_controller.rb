class CocktailsController < ApplicationController
  def home
    @cocktails = Cocktail.new
  end
end
