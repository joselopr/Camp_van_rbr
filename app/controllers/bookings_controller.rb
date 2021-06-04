class BookingsController < ApplicationController

  def create
    @booking = Booking.new(bookings_params)
    authorize @booking
    @van = Van.find(params[:van_id])
    @booking.van = @van
    @booking.user = current_user
    # Calling method in booking model to calculate price
    @booking.calculate_total_price_booking
    if @booking.save
      redirect_to root_path
      # should be redirected to the dashboard
    else
      render :new
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
