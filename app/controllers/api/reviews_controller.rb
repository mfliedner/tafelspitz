class Api::ReviewsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    review = Review.new(review_params)
    review.user_id = current_user.id

    if review.save
      @restaurant = review.restaurant
      render '/api/restaurants/show'
    else
      render json: review, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(
      :rating, :rate_food, :rate_ambience, :rate_service, :rate_value,
      :body, :restaurant_id)
  end
end
