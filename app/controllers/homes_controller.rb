class HomesController < ApplicationController
  def index
    @homes = Home.all
  end

  def show
    @home = Home.find params[:id]
    @bookings = Booking.all
  end

  def new
    @home = Home.new
  end

  def create
    # home = Home.create home_params
    home = @current_user.homes.create home_params # Associates the home to the logged in user
    redirect_to homes_path
  end

  def edit
    @home = Home.find params[:id]
  end

  def update
    home = Home.find params[:id]
    home.update home_params
    redirect_to home
  end

  def destroy
    home = Home.find params[:id]
    home.destroy
    redirect_to homes_path
  end

  private
  def home_params
    params.require(:home).permit(:name, :city_id, :user_id, :max_guests, :bathrooms, :check_in, :check_out, :description, :image, :price)
  end
end
