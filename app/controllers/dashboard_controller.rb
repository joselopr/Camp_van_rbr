class DashboardController < ApplicationController
  def my_dashboard
    @bookings = current_user.bookings
    @vans = current_user.vans
    authorize :dashboard
  end
end
