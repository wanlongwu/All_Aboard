class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    startdate = Date.new(params[:booking][:"start_date(1i)"].to_i,
                        params[:booking][:"start_date(2i)"].to_i,
                        params[:booking][:"start_date(3i)"].to_i)
    enddate = Date.new(params[:booking][:"end_date(1i)"].to_i,
                        params[:booking][:"end_date(2i)"].to_i,
                        params[:booking][:"end_date(3i)"].to_i)
    # raise
    @booking = Booking.new(booking_params)
    @booking.boat = Boat.find(params[:"boat_id"])
    @booking.start_date = startdate
    @booking.end_date = enddate
    @booking.user = current_user
    @booking.save
    redirect_to user_path(current_user)
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(@booking.user)
    authorize @booking
  end

  def update

  end

  def edit

  end

  private
  def booking_params
    params.require(:booking).permit(:boat_id, :booking)
  end

end
