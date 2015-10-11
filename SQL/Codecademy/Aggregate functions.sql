/*Count how many apps are in the db*/

SELECT COUNT (*) FROM fake_apps;
SELECT COUNT (*) from fake_apps WHERE price = 0;

SELECT price, COUNT(*) FROM fake_apps GROUP BY price;

SELECT price, COUNT(*) FROM fake_apps WHERE downloads > 20000 GROUP BY price;

SELECT SUM(downloads) FROM fake_apps;

SELECT category, SUM(downloads) FROM fake_apps GROUP BY category;
SELECT MAX(downloads) FROM fake_apps;

SELECT name, category, MAX(downloads) FROM fake_apps GROUP BY category;
SELECT name, MIN(downloads)  FROM fake_apps;
SELECT name, category, MIN(downloads) FROM fake_apps GROUP BY category;

SELECT AVG(downloads) FROM fake_apps;

SELECT price, AVG(downloads) FROM fake_apps GROUP BY price;
SELECT price, ROUND(AVG(downloads),2) FROM fake_apps GROUP BY price;

