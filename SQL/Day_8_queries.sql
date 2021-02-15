-- Questions for All the Table

USE feb_challange;

-- 1. Count Listing_id, with name mapped(INNER JOIN)
SELECT `la`.`listing ID`, `la`.`Host Name` AS Name,  COUNT(`airbnb_ratings`.`listing_id`) AS Count
FROM `la`
INNER JOIN `airbnb_ratings`
ON `la`.`listing ID` = `airbnb_ratings`.`listing_id`
GROUP BY `listing_id`
ORDER BY COUNT(`airbnb_ratings`.`listing_id`) DESC;



-- 2. Reviewer name, how much reviews has given
SELECT `reviewer_name`, COUNT(`reviewer_name`) AS `Count` FROM airbnb_ratings GROUP BY `reviewer_name` ORDER BY COUNT(`reviewer_name`) DESC LIMIT 50;



-- 3. How many reviews were given on a perticular year
SELECT COUNT(*) AS `Reviews Given` 
FROM airbnb_ratings	WHERE (date BETWEEN '2017-01-39 00:00:00' AND '2017-12-31 00:00:00');



-- 4. COUNT of individual Listings_id
SELECT `listing_id`, COUNT(`listing_id`)
FROM airbnb_ratings
GROUP BY `listing_id`
ORDER BY COUNT(`listing_id`) DESC
LIMIT 50;



-- 5. Total Comments for different home_type
SELECT la.`Room type`, la.`Host Name`, airbnb_ratings.`reviewer_name`, COUNT(airbnb_ratings.`comments`) AS `Total Comments`
FROM airbnb_ratings
INNER JOIN la
ON la.`listing id` = airbnb_ratings.`listing_id`
GROUP BY airbnb_ratings.`comments`, `Room type`, `reviewer_name`
ORDER BY COUNT(airbnb_ratings.`comments`)DESC
LIMIT 50;


-- 6. Host that has given reviews
SELECT airbnb_ratings.`reviewer_name`, COUNT(airbnb_ratings.`reviewer_name`) AS Count
FROM la
LEFT JOIN airbnb_ratings
ON la.`Host Name` = airbnb_ratings.`reviewer_name`
GROUP BY `reviewer_name`
ORDER BY COUNT(airbnb_ratings.`reviewer_name`) DESC
LIMIT 50;



-- 7. Distinct Reviewer Name
SELECT DISTINCT(`reviewer_name`) FROM airbnb_ratings;