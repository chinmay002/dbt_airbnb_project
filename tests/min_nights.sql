select * from {{ref('stg_bookings')}}
where nights_booked > 14