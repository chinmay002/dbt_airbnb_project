-- SELECT 
--     b.*,
--     l.* EXCEPT(listing_id),
--     booking_amount + cleaning_fee + service_fee AS total_amount

--  from {{ref('stg_bookings')}} b
-- LEFT JOIN {{ref("stg_listings")}} l
-- on b.listing_id = l.listing_id

SELECT
    b.*, 
    l.* EXCEPT(listing_id,created_at),
    booking_amount + cleaning_fee + service_fee AS total_amount,
  

FROM {{ ref('stg_bookings') }} b
LEFT JOIN {{ ref('stg_listings') }} l
    ON b.listing_id = l.listing_id