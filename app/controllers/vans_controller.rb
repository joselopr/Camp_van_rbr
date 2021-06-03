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
  end

  def new
    @van = Van.new
    authorize @van
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    authorize @van
    if @van.save
      redirect_to @van, notice: 'Van was successfully created.'
    else
      render :new
    end
  end

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

  def van_params
    params.require(:van).permit(:brand, :model, :capacity, :day_price, :description)
  end
end
