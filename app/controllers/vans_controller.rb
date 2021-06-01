class VansController < ApplicationController

  def index
    @vans = policy_scope(Van)
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
