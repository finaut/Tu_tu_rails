class TrainsController < ApplicationController
  before_action :get_train, only: [:show, :edit, :update, :destroy]

  def index
    @trains = Train.all
  end

  def show; end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new set_params
    if @train.save
      redirect_to @train, notice: 'Create new train successfully'
    else
      render :new
    end
  end

  def edit; end

  def update
    @train.update set_params
    if @train.save
      redirect_to @train,  notice: 'Train successfully update'
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    render :index, notice: 'Train successfully destroy'
  end

  private
  def get_train
    @train = Train.find(params[:id])
  end

  def set_params
    params.require(:train).permit(:number, :route_id)
  end
end
