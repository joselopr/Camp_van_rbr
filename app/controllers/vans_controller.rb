class VansController < ApplicationController
  before_action :set_van, only: [:show]
  def index
    @vans = policy_scope(Van)

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
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
