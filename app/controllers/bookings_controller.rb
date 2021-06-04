class BookingsController < ApplicationController
before_action :find_booking, only: [:accept, :decline]

  def create
    @booking = Booking.new(bookings_params)
    authorize @booking
    @van = Van.find(params[:van_id])
    @booking.van = @van
    @booking.user = current_user
    # Calling method in booking model to calculate price
    @booking.calculate_total_price_booking
    if @booking.save
      redirect_to my_dashboard_path
      # should be redirected to the dashboard
    else
      render :new
    end
  end

  def accept
    authorize @booking
    @booking.status = "accepted"
    @booking.save

    redirect_to my_dashboard_path, notice: "You #{@booking.status} the booking!"
  end

  def decline
    authorize @booking
    @booking.status = "declined"
    @booking.save
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
