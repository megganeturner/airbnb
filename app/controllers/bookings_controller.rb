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
    @home = Home.find params[:home_id]
    if @home.present?
      start_year = params[:booking]['start_date(1i)'].to_i
      start_month = params[:booking]['start_date(2i)'].to_i
      start_day = params[:booking]['start_date(3i)'].to_i
      end_year = params[:booking]['end_date(1i)'].to_i
      end_month = params[:booking]['end_date(2i)'].to_i
      end_day = params[:booking]['end_date(3i)'].to_i
      start_date = DateTime.new(start_year, start_month, start_day)
      end_date = DateTime.new(end_year, end_month, end_day)
      bookable = true
      if @home.bookings.any?
        @home.bookings.each do |booking|
          if (start_date..end_date).overlaps?(booking.start_date..booking.end_date)
            flash[:error] = "Not available."
            bookable = false
            puts "unbookable start: #{start_date}, end: #{end_date}. existing start: #{booking.start_date}, existing end: #{booking.end_date}"
          end
        end
      end
      if bookable
        puts "is bookable"
        new_booking = @home.bookings.new(booking_params)
        @current_user.bookings << new_booking if new_booking.valid?
        new_booking.save
        redirect_to new_charge_path
      else
        puts "is not bookable"
        @booking = Booking.new
        render :new
      end
    end
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
