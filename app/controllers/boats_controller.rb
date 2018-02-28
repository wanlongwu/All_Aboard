class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @place = params[:location]
    if @place
      @all_boats = Boat.where(location: @place)
    else
      @all_boats = Boat.all
    end

    @boats = @all_boats.where.not(latitude: nil, longitude: nil)

    @markers = @boats.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude
      }
     end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  # def search(prompt)
  # end
end
