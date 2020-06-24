class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @sort_restaurants = @restaurants.order('created_at DESC')
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
