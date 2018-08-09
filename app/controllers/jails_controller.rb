class JailsController < ApplicationController
  before_action :set_jail, only: [:show, :edit, :update, :destroy]

  # GET /jails
  def index
    @jails = Jail.all
  end

  # GET /jails/1
  def show
    @killer = Killer.new
  end

  # GET /jails/new
  def new
    @jail = Jail.new
  end

  # GET /jails/1/edit
  def edit
  end

  # POST /jails
  def create
    @jail = Jail.new(jail_params)

    if @jail.save
      redirect_to @jail, notice: 'Jail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /jails/1
  def update
    if @jail.update(jail_params)
      redirect_to @jail, notice: 'Jail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jails/1
  def destroy
    @jail.destroy
    redirect_to jails_url, notice: 'Jail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jail
      @jail = Jail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jail_params
      params.require(:jail).permit(:name, :banner_url)
    end
end
