create view HotelRev 
as 
select h.hotel,h.arrival_date ,h.arrival_date_year,
h.stays_in_week_nights + h.stays_in_weekend_nights as 'stay_ins', h.adults, h.children,
h.babies,h.adr,h.meal, m.Cost, h.market_segment,ms.Discount, h.required_car_parking_spaces 
from hotel_revenue h 
left join meal_cost m on m.meal = h.meal 
left join market_segment ms on ms.market_segment = h.market_segment




