class FlightsController < ApplicationController
  def index
    @airports = Airport.all.order(:name).map{ |a| [a.name, a.id]} << ["Select an airport", 0]
    p params
    if params["commit"]
      @flights = Flight.where(departure_airport_id: params["departure_airport_id"], arrival_airport_id: params["arrival_airport_id"])
      @dates = @flights.all.map { |f| f.start.to_date }.uniq.sort
      if params["date"]
        @flights_for_date = Flight
          .where(departure_airport_id: params["departure_airport_id"], arrival_airport_id: params["arrival_airport_id"]).where('DATE(start) = ?', params["date"])
          .all
          .order(:start)
      end
    end
  end
end
