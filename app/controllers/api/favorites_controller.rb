class Api::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      restaurant_id: favorites_params[:restaurant_id]
    )

    if(@favorite.save)
      render "api/favorites/show", status: 200
    else
      @errors = favorite.errors.full_messages
			render "api/shared/error", status: 422
    end
  end

  def destroy
    @favorite = Favorite.find_by(
      user_id: current_user.id,
      restaurant_id: favorites_params[:restaurant_id]
    )

    if(@favorite.destroy)
      render "api/favorites/show", status: 200
    else
      @errors = favorite.errors.full_messages
			render "api/shared/error", status: 422
    end
  end

  private
  def favorites_params
    params.require(:favorite).permit(:restaurant_id)
  end
end
