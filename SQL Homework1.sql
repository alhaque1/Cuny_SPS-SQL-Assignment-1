/* problem 1 max distance is 4983 from JFK To HNL */ 

select max(distance),origin,dest from flights
group by dest
order by distance desc;

/* problem 2 The different number of engines in the plane table is 3322 */

select count(engines) from planes;  

/* problem 2 The Boeing Model 747-451 has the most number of seats with 450 seats */ 

select Max(seats),tailnum,manufacturer,model,year from planes
group by tailnum
order by seats desc;

/* problem 3 total number of flights is 336776 */ 

select count(*) from flights; 

/* problem 4 */

select carrier,count(*)
from flights
group by carrier; 

/* problem 5 */ 

select carrier,count(flight) from flights
group by carrier
order by count(flight) desc;

/* problem 6 */ 

select count(*) as total, carrier as airline 
from flights
group by carrier 
order by count(carrier) desc
limit 5; 

/* Problem 7 */ 
select carrier, distance 
from flights
where distance >=1000
group by carrier
order by count(carrier) desc; 

/* Problem 8 */ 
/* identify the airline that had the total number of arrival delay by flight_delay order by flight delays in descending order */
select Max(arr_delay),carrier from flights group by arr_delay order by arr_delay desc;