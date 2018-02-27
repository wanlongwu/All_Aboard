class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @place = params[:location]
    @boats = Boat.where(location: @place)
  end

  def show
    @boat = Boat.find(params[:id])
  end

  # def search(prompt)
  # end
end
