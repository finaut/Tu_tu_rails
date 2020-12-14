class StationsController < ApplicationController

  before_action :set_station, only: [:edit, :show, :update, :destroy]

  def index
    @stations = Station.all
  end


  def show
    # value ready in def set_station
  end

  def new
    # for validation
    @station = Station.new
  end

  def create
    @station = Station.new set_params
    if @station.save
      redirect_to @station, notice: 'station successfully create'
    else
      render :new
    end
  end

  def edit; end

  def update
    @station.update set_params
    if @station.save
      render :show, notice: 'station successfully update'
    else
      render :edit
    end
  end

  def destroy
    @station.destroy
    redirect_to stations_url, notice: 'продукт успешно удален'
  end

  private
  def set_station
    # find need station
    @station = Station.find(params[:id])
  end

  def set_params
    params.require(:station).permit(:name)
  end
end
