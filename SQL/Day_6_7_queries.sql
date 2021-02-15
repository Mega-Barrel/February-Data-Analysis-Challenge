use feb_challange;
show tables;


SELECT * from la LIMIT 5;

-- Question 1: Host Name Frequency count
SELECT `Host Name`, COUNT(`Host Name`) from la GROUP BY Name;

-- Question 2: Number of City available
SELECT DISTINCT City from la;

-- Question 3: ROOM type available with amenities provides
SELECT `Room type`, COUNT(`Room type`) FROM la GROUP BY `Room type`;

-- Question 4: PROPERTY types
SELECT `Property type`, COUNT(`Property type`) FROM la GROUP BY `Property type`;

-- Question 5: Avg number of Bathrooms/Bedrooms
SELECT AVG(`Bathrooms`) from la;

-- Question 6: Avg Minimum/Maximum nights 
SELECT MIN(`Minimum nights`) from la;
SELECT MIN(`Maximum nights`) from la;

-- Question 7: Price
SELECT AVG(Price) from la;

SELECT `Room type`, AVG(Price) AS `Avg Prices`, COUNT(`Room type`) AS Total_Room 
    FROM la GROUP BY (`Room type`) ORDER BY AVG(Price);  

-- Question 8: Number of reviews
SELECT `Host Name`, COUNT(`Host Name`) AS `Host`,  `Number of reviews` FROM la GROUP BY `Number of reviews` ORDER BY COUNT(`Host Name`), `Number of reviews` DESC;

-- Question 9: Looking at some amenities offered
SELECT `Host Name`, `Amenities` from la LIMIT 5;
