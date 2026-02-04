CREATE DATABASE foodservice;

USE foodservice;

CREATE TABLE restaurants(
restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
restaurant_name VARCHAR(50),
cuisine VARCHAR(20),
rating FLOAT,
is_open BOOLEAN
);

INSERT INTO restaurants (restaurant_name, cuisine, rating, is_open)
VALUES ('Spicy Hub','South Indian','4.5',TRUE),
('Burger Bros','Fast Food','4.2',TRUE),
('Arabian Wok','Sea Food','3.5',FALSE),
('The GodFather','Chinese','3.8',TRUE),
('Hash House','Italian','4.8',TRUE),
('Tandoori Tribes','Chinese','3.9',FALSE),
('Bistro Bliss','South Indian','4.9',TRUE),
('Lumia','Fast Food','2.8',TRUE);

SELECT * FROM restaurants;
SELECT restaurant_name,is_open FROM restaurants;
SELECT cuisine FROM restaurants;
SELECT DISTINCT cuisine FROM restaurants;

SELECT restaurant_name,is_open FROM restaurants WHERE is_open = TRUE;

SELECT * FROM restaurants WHERE restaurant_name LIKE 'B%';
SELECT restaurant_name FROM restaurants WHERE restaurant_name LIKE '%s';
SELECT * FROM restaurants WHERE restaurant_name LIKE '%God%';
SELECT * FROM restaurants WHERE restaurant_name LIKE '_u%';

SELECT * FROM restaurants WHERE is_open = TRUE AND rating >= 4.5;
SELECT restaurant_name,cuisine,rating FROM restaurants WHERE cuisine = 'Chinese' AND rating >= 3;

SELECT * FROM restaurants WHERE cuisine = 'Chinese' OR cuisine = 'Italian';
SELECT * FROM restaurants WHERE restaurant_name LIKE 'B%' OR restaurant_name LIKE 'S%';

SELECT restaurant_name,cuisine,rating FROM restaurants WHERE NOT cuisine = 'Fast Food';
SELECT restaurant_name,cuisine,rating FROM restaurants WHERE NOT cuisine = 'Fast Food' AND NOT cuisine = 'Chinese';
SELECT * FROM restaurants WHERE restaurant_name NOT LIKE '%God%';

SELECT * FROM restaurants ORDER BY rating DESC;


