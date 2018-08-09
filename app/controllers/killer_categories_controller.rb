class KillerCategoriesController < ApplicationController
  def new
    @killer = Killer.find(params[:killer_id])
    @killer_category = KillerCategory.new
  end

  def create
    @killer = Killer.find(params[:killer_id])
    @killer_category = KillerCategory.new(killer_category_params)
    @killer_category.killer = @killer
    if @killer_category.save
      redirect_to jail_path(@killer.jail)
    else
      render :new
    end
  end

  private

  def killer_category_params
    params.require(:killer_category).permit(:category_id)
  end
end
