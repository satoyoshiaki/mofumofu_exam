class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  
  def index
    @homes = Home.all
  end

 
  def show
  end

 
  def new
    @home = Home.new
    2.times {@home.detail.build}
  end


  def edit
    @home.detail.build
  end

  def create
    @home = Home.new(home_params)
      if @home.save
        redirect_to @home, notice: 'Home was successfully created.'
      else
        render :new 
      end
  end


  def update
      if @home.update(home_params)
        redirect_to @home, notice: 'Home was successfully updated.' 
      else
        render :edit
      end
  end


  def destroy
    @home.destroy
      redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private

    def set_home
      @home = Home.find(params[:id])
    end

    def home_params
      params.require(:home).permit(:name, :money, :address, :age, :context, detail_attributes: [:route_name, :station_name, :distance, :id, :_destroy])
    end
  end
