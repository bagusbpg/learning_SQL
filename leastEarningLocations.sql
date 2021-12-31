/*
A ride hailing company has their DB structured in 3 major tables
as described in SCMEA below. Write a query to fetch the city names
along with earnings from each city. 'Earnings' are calculated as
the sum of fares of all the rides taken in that city. The output
should be structured as: cities.name earnings. The output is sorted
ascending by earnings, then ascending by the city name.

Schema
There are 3 tables:
CITIES
Field       Type        Description
id          STRING      The assigned ID to the city presented as
                        32 character UUID.
name        STRING      The name of the city.

USERS
Field       Type        Description
id          STRING      The assigned ID to the user presented as
                        32 character/UUID
city_id     STRING      The id of the city in which this user resides.
name        STRING      The name of the user.
email       STRING      The email of the user.

RIDES
Field       Type        Description
id          STRING      The assigned ID to the ride presented as
                        32 character UUID.
user_id     STRING      The id of the user who took this ride. 
distance    INTEGER     The travelled distance in this ride.
fare        INTEGER     The fare of this ride.
*/

SELECT CITIES.name name, SUM(RIDES.fare) earnings
FROM CITIES
LEFT JOIN USERS ON CITIES.id = USERS.city_id
LEFT JOIN RIDES ON USERS.id = RIDES.user_id
GROUP BY CITIES.names
ORDER BY earnings ASC, name ASC;