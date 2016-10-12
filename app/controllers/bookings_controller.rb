class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find params[:id]
  end

  def new
    @home = Home.find params[:home_id]
    @booking = Booking.new
  end

  def create
    home = Home.find params[:home_id]
    if home.present?
      booking = home.bookings.create booking_params
      @current_user.bookings << booking if booking.valid?
    end
    redirect_to booking
  end

  def edit
    @booking = Booking.find params[:id]
  end

  def update
    booking = Booking.find params[:id]
    booking.update booking_params
    redirect_to booking

  end

  def destroy
    booking = Booking.find params[:id]
    booking.destroy
    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
