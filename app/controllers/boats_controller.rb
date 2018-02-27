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

  # def search(prompt)
  # end
end
