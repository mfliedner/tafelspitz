class Api::RestaurantsController < ApplicationController
  before_action :require_logged_in, only: [:create]
  def index
    @restaurants = Restaurant.all

    if name_known?
      @restaurants = [Restaurant.find_by_name(name)]
    else
      if(bounds)
        @restaurants = Restaurant.in_bounds(bounds)
      end
    end

    @restaurants = Restaurant.available(@restaurants, params) if filter

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

  def show
    @restaurant = Restaurant.find(params[:id])
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

  def name
    params[:name]
  end

  def name_known?
    !!name && name.length > 0
  end

  def filter
    return false if params[:filter].nil?
    params[:filter].start_with?("f") ? false : true
  end
end
