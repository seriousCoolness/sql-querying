-- Comments in SQL Start with dash-dash --

--1--
SELECT * FROM analytics WHERE id = 1880;

--2--
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

--3--
SELECT category, COUNT(category) FROM analytics GROUP BY category;

--4--
SELECT app_name, reviews FROM analytics GROUP BY app_name, reviews ORDER BY reviews desc LIMIT 5;

--5--
SELECT MAX(reviews), app_name FROM analytics WHERE rating >= 4.8 GROUP BY app_name ORDER BY MAX(reviews) desc LIMIT 1;

--6--
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) desc;

--7--
SELECT app_name, price, rating FROM analytics ORDER BY MAX(price) desc WHERE rating < 3;

--8--
SELECT * FROM analytics where min_install < 50 AND rating != 0 ORDER BY rating desc;

--9--
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews <= 10000 GROUP BY app_name, rating, reviews ORDER BY reviews desc;

--10--
SELECT app_name, reviews FROM analytics WHERE price BETWEEN 0.10 AND 1.00 GROUP BY app_name, reviews ORDER BY reviews desc LIMIT 10;

--11--
SELECT app_name, last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;

--12--
SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;

--13--
SELECT SUM(reviews) FROM analytics;

--14--
SELECT category, COUNT(category) FROM analytics GROUP BY category HAVING COUNT(category) > 300;

--15--