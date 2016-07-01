class Api::ReservationsController < ApplicationController
  before_action :require_logged_in

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    reservation = Reservation.new(reservation_params)
    reservation.user_id = current_user.id

    if reservation.save
      @restaurant = reservation.restaurant
      render '/api/restaurants/show'
    else
      render json: reservation, status: :unprocessable_entity
    end
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update(reservation_params)
      render :show
    else
      render json: @reservation.errors.full_messages, status: 422
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    if @reservation.destroy
      render :show
    else
      render json: @reservation.errors.full_messages, status: 422
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :date, :time, :guest_count, :requests, :restaurant_id)
  end
end
