class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
  end

  def create

  end

  def show

  end
end
