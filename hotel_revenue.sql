select * from hotelrev

--yearly total revenue
select arrival_date_year, round(sum(stay_ins*adr + cost- (discount*adr)),2) as 'Total revenue' from HotelRev group by arrival_date_year

--hotels yearly total revenue
select arrival_date_year,hotel, round(sum(stay_ins*adr + cost- (discount*adr)),2) as 'Total revenue' 
from HotelRev group by hotel,arrival_date_year

--hotels total record and revenue
select hotel, sum(adults + children + babies) as 'total guest', sum(stay_ins) as 'total days in', count(meal) as ' total meal ordered',
round(sum(stay_ins*adr + cost- (discount*adr)),2) as 'Total revenue' from HotelRev group by hotel


--hotel meal revenue and quantity sold
select hotel, meal,cost, count(meal) as 'meal quantity', count(meal)*(cost) as 'total meal revenue' from hotelrev group by meal,cost,hotel
order by meal,hotel

--hotel yearly visitors
select arrival_date_year, hotel, sum(adults) as 'Total adults',sum(children) as 'Total children', 
sum(babies) as 'Total babies' from hotelrev group by arrival_date_year,hotel order by arrival_Date_year

--hotels yearly required parking spaces
select arrival_date_year,hotel, sum(required_car_parking_spaces) as 'Total required parking spaces' from hotel_revenue
group by arrival_date_year, hotel order by arrival_date_year, hotel


--market segment used by hotels
select hotel,market_segment, count(market_segment) as 'No. times used' from HotelRev group by hotel,market_segment
order by market_segment,hotel

