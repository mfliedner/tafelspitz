class Api::RestaurantsController < ApplicationController
  before_action :require_logged_in, only: [:create]
  def index
    @restaurants = Restaurant.all
    if(bounds)
      @restaurants = Restaurant.in_bounds(bounds)
    end

    render :index
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner_id = current_user.id
    coords = Restaurant.address_to_coords(@restaurant.address)
    @restaurant.lat = coords["lat"]
    @restaurant.lng = coords["lng"]
    @restaurant.save!
    @restaurant
    render :show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :owner_id,
      :name,
      :address,
      :lat,
      :lng,
      :description,
      :price_range,
      :img_url,
      :opening,
      :closing,
      :seats,
      :phone,
      :menu
    )
  end

  def bounds
    params[:bounds]
  end
end
