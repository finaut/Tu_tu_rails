class RoutesController < ApplicationController

  before_action :set_route, only: [:edit, :show, :update, :destroy]

  def index
    @routes = Route.all
  end


  def show
    # value ready in def set_station
  end

  def new
    # for validation
    @route = Route.new
  end

  def create
    @route = Route.new set_params
    if @route.save
      redirect_to @route, notice: 'route successfully create'
    else
      render :new
    end
  end

  def edit; end

  def update
    @route.update set_params
    if @route.save
      render :show, notice: 'route successfully update'
    else
      render :edit
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_url, notice: 'route successfully update'
  end

  private
  def set_route
    # find need station
    @route = Route.find(params[:id])
  end

  def set_params
    params.require(:route).permit(:title, :station_id )
  end
end