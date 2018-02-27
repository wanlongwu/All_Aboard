class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def destroy
  end

  def update

  end
  def edit

  end

private
  def booking_params
    paras.require(:booking).permit(:user_id, :boat_id, :start_date, :end_date)
  end

end
