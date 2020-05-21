class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.find(params[:ingredient_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    # @dose.ingredient = @ingredient

    if @dose.save
      # Success
      redirect_to cocktail_path(@cocktail), notice: 'Added ingredient.'
    else
      # Failure
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  # def set_cocktail

  # end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
