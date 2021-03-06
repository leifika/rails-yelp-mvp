class RestaurantsController < ApplicationController

def new
  @restaurant = Restaurant.new
end

def show
  @restaurant = Restaurant.find(params[:id])
  @reviews = @restaurant.reviews
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save
end

def index
  @restaurants = Restaurant.all
end

# def edit
# end

# def update
# end

# def destroy
# end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :rating)
end

end
