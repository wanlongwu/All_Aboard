class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.where(user: @user)
    @boats = Boat.where(user: @user)
    # @requests = Booking.where(boats: )
  end
end
