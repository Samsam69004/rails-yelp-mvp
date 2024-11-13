class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def edit
  end

  def update

  end

  def destroy
    @restaurant.destroy
  end
end
