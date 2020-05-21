class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktails.all
  end

  # def show
  #   @cocktail=Cocktail.find()
  # end
end
