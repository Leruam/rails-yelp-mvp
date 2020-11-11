class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    set_restaurant
  end

  def new

  end

  def create

  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
