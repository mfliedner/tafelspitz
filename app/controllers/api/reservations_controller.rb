class Api::ReservationsController < ApplicationController
  before_action :require_logged_in

  def index
    @reservations = Reservation.where("guest_id = ?", current_user.id)
                               .order(date: :asc)
                               .includes(:restaurant)
    @reservation_items = {}
    @reservations.each do |item|
      @reservation_items[item.id] = {
        :id => item.id,
        :guest_count => item.guest_count,
        :date => item.date,
        :time => item.time,
        :requests => item.requests,
        :restaurant_id => item.restaurant_id,
        :name => item.restaurant.name,
        :img_url => item.restaurant.img_url
      }
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservation_item = {
      :id => @reservation.id,
      :guest_count => @reservation.guest_count,
      :date => @reservation.date,
      :time => @reservation.time,
      :requests => @reservation.requests,
      :restaurant_id => @reservation.restaurant_id,
      :name => @reservation.restaurant.name,
      :img_url => @reservation.restaurant.img_url
    }
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.guest_id = current_user.id
    if @reservation.available?
      @reservation.save!
      render :show
    else
      render json: @reservation.errors.full_messages, status: :unprocessable_entity
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
