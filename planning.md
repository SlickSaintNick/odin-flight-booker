# Planning

1. Enter desired dates / airports and click “Search”
2. Choose from among a list of available flights
3. Enter passenger information for all passengers
4. Enter billing information

- Airport
  - has_many :departing_flights
  - has_many :arriving_flights
  - code (SYD, MEL, BNE, PER, ADL, CBR, OOL)
  - name (Sydney, Melbourne, etc.)
- Flight
  - departure_airport id
  - arrival_airport id
  - Start datetime
  - Duration - integer (minutes)
- Booking
  - passenger_id
  - flight_id
  - Number of passengers (1-4) - integer
- Passenger
  - has_many :bookings
  - name
  - email

Steps

- Screen 1: search - 4 dropdown menus to search for available flights. Prepopulated with collections of data.
  - Create Airport model
  - db/seeds.rb creates airports
  - Create Flight model.
  - Set up associations between Airport / Flight
  - Seed flights
  - Flights Controller and routes.
  - Search form on /flights index page. Submit using GET to same URL.
  - Add 4 dropdown menus - departure airports, arrival airports, number of passengers, date (only include dates with flights)

- Screen 2: pick a flight
  - Controller pulls flights matching criteria
  - Send these back to index, should display any results below search.
  - Search results in own form - for selecting a flight. Radio button next to each. Submit to #new action of Bookings Controller. Hidden field with number of passengers.

- Screen 3: passenger information
  - Create Booking model
  - Passenger model
  - Associations Bookings, Passengers, Flights
  - **Bookings Controller**
  - #new - render a form for a new booking showing date, airports, flight ID, personal information. Create a blank Passenger object in controller, use #fields_for to set up sub-forms.
  - #create action to create a new Booking (nested attributed and parameters)
  - #show page for Booking - flight and passenger information.
  