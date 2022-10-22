
SELECT aircraft_code FROM seats
group by aircraft_code
ORDER by count(seat_no) desc;

select distinct aircraft_code, (cast((
    select count(seat_no) from seats S2
    where S1.aircraft_code = S2.aircraft_code and S2.fare_conditions = 'Business'
) as float) / (
                                    select count(seat_no) from seats S3
                                    where S1.aircraft_code = S3.aircraft_code and S3.fare_conditions = 'Economy'
                                )) ratio
from seats S1
order by ratio;

SELECT aircraft_code FROM flights
group by aircraft_code
ORDER by count(flight_no) desc;

select aircraft_code, avg((actual_arrival - actual_departure)) from flights
group by aircraft_code;

select departure_airport, avg((actual_departure - scheduled_departure)) from flights
group by departure_airport;

select departure_airport, min((actual_departure - scheduled_departure)), max((actual_departure - scheduled_departure)) from flights
group by departure_airport;

select distinct bookings.book_ref
from
    ((((bookings
        join tickets on bookings.book_ref = tickets.book_ref)
        join ticket_flights on tickets.ticket_no = ticket_flights.ticket_no)
        join flights on ticket_flights.flight_id = flights.flight_id)
        join airports on flights.departure_airport = airports.airport_code)
where airports.city = 'Москва'