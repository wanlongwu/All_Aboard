class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_boat, only: [:show, :edit, :update, :destroy]

  def index
    @place = params[:location]
    @boats = Boat.where(location: @place)
    @boats = policy_scope(Boat)
  end

  def show
  end

  def new
    @boat = Boat.new
    authorize @boat
  end
    
  def destroy
    @boat = Boat.find(params[:id])
    if @boat.destroy
      # flash[:success] = "Deleted!"
    end
    redirect_to user_path(@boat.user)
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat

    if @boat.save
      redirect_to user_path(current_user)
      # boat_path(3)
    else
      render :new
    end
  end
  # def search(prompt)
  # end
  
  private
  def set_boat
    @boat = Boat.find(params[:id])
    authorize @boat
  end
  def boat_params
    params.require(:boat).permit(:name, :length, :price, :location)
  end
end
