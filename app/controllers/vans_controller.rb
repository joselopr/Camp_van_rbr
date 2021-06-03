class VansController < ApplicationController
  before_action :set_van, only: [:show]
  def index
    @vans = policy_scope(Van)
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @vans.geocoded.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude,
        info_window: render_to_string(partial: "info_window", locals: { van: van }),
        image_url: helpers.image_url('van.png')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  # def new

  # end

  # def create

  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
  private

  def set_van
    @van = Van.find(params[:id])
    authorize @van
  end
end
