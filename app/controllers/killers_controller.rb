class KillersController < ApplicationController
  before_action :set_jail, only: [:new, :create]

  def new
    @killer = Killer.new
  end

  def create
    @killer = Killer.new(killer_params)
    @killer.jail = @jail
    if @killer.save
      redirect_to jail_path(@jail)
    else
      render :new
    end
  end

  def destroy
    killer = Killer.find(params[:id])
    killer.destroy
    redirect_to jail_path(killer.jail)
  end

  def show
  end

  private

  def killer_params
    params.require(:killer).permit(:name, :image_url)
  end

  def set_jail
    @jail = Jail.find(params[:jail_id])
  end
end
