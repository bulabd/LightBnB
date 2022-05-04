select reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
from reservations
join properties on properties.id = reservations.property_id
join property_reviews on properties.id = property_reviews.property_id
where reservations.guest_id = 6
group by properties.id, reservations.id
order by reservations.start_date
limit 10;