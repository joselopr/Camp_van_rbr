class BookingsController < ApplicationController
  def create
    @booking = Booking.new(bookings_params)
    authorize @booking
    @van = Van.find(params[:van_id])
    @booking.van = @van
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
      # should be redirected to the dashboard
    else
      render :new
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:user_id, :van_id, :start_dat, :end_date)
  end
end
