class DosesController < ApplicationController
  def create
    @cocktails = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktails_path(@cocktails)
    else
      render "cocktails/show"
  end
end
