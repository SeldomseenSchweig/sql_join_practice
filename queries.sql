
-- 1. Joins car table with all owners table, even if the car

SELECT * FROM owners
    LEFT JOIN vehicles
     ON  owners.id = vehicles.owner_id;



-- 2. Joins tables and counts the number of cars each person has 
     SELECT first_name, last_name, COUNT(*) AS count FROM owners
    JOIN vehicles
        ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name
    ORDER BY count ASC;


-- 3. Counts cars and displays average price of car over 10000 

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price , COUNT(*) AS count FROM owners
    JOIN vehicles
        ON owners.id = vehicles.owner_id 
    GROUP BY first_name, last_name
    HAVING AVG(price) > 10000
    ORDER BY average_price DESC;

-- 4. Zoo answers. I did not do copy my answers from the website fot the last one, I guess I'll do it for this one

