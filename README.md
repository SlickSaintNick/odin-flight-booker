# odin-flight-booker

Created for the Odin Project. Project spec [here](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker).

I have stuck to the bare bones of the spec and focussed purely on the forms and the back end. No validation of any kind, minimal formatting and no styling, and the only navigation is the 'return to flights index' link in header.

The form guides the user through the following steps:

- Select a Departure and Arrival Airport and submit.
- Form shows options for number of passengers and available dates. Submit the form again, having chosen a date and number of passengers.
- Form now shows Flight options in a second form. Select an option.
- Booking page now shows, with the Flight number and details, and room to add name and email for as many passengers as selected in previous step.
- Add names and emails, and submit
- Booking confirmation shows with flight and passenger details.

The database seed is a selection of major Australian airports, and a randomly generated set of 100 flights between these airports.

UPDATE - added ability to add and remove passengers as per the Stimulus lesson. However, only one passenger can in fact be added (more rows can be added - but each has the same id so only the final one is saved). I don't believe it is in the spirit of the Stimulus task to solve this problem so am leaving it as is!
