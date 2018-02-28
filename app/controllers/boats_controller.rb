class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @place = params[:location]
    @boats = Boat.where(location: @place)
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def destroy
    @boat = Boat.find(params[:id])
    if @boat.destroy
      # flash[:success] = "Deleted!"
    end
    redirect_to user_path(@boat.user)
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    @boat.save
    redirect_to user_path(current_user)
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    @boat.save!
    redirect_to user_path(current_user)
  end

private

  def boat_params
    params.require(:boat).permit(:name, :length, :price, :location)
  end

end
