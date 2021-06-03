class VansController < ApplicationController
  before_action :set_van, only: [:show]
  def index
    @vans = policy_scope(Van)
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
