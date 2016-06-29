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
    @restaurant = Restaurant.create!(restaurant_params)
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
