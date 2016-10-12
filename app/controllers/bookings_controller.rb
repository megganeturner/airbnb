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
      home.bookings.each do |bookings|
        @ystart = bookings.start_date
        @yend = bookings.end_date
        xstart = params[:start_date]
        xend = params[:end_date]

        if (xstart..xend).overlaps?(ystart..yend) == true
          render 'You can\'t do that'
        else
          new_booking = home.bookings.create booking_params
          @current_user.bookings << new_booking if new_booking.valid?
        end
      end
      # booking = home.bookings.create booking_params
      # @current_user.bookings << booking if booking.valid?
    end
    redirect_to root_path
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
