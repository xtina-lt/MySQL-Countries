--------------------------------------
--        #  XTINA.CODES  #         --
--   INSERT INTO table() VALUE()    --
--  UPDATE table SET table.id = 'y' --
--      DELETE FROM table WHERE     --
--           WHERE id = #           --
--        SELECT * FROM table       --
--       GROUP BY column DESC       --
--          ORDER BY column         --
--------------------------------------

-- # all countries, where language = 'slovene'
-- # return: name of country, language, language percentage
-- SELECT name AS country, language, percentage AS language_percentage FROM languages
-- JOIN countries ON countries.id = languages.country_id
-- WHERE language = 'slovene'


-- # count(cities) / each country
-- # order by count(cities) DESC
-- SELECT countries.name AS country, COUNT(cities.id) AS cities FROM cities
-- JOIN countries ON countries.id = cities.country_id
-- GROUP BY country
-- ORDER BY cities DESC


-- # * cities in country = mexico where population > 5000000
-- # return: order by population DESC
-- SELECT countries.name AS country, cities.name AS city, cities.population AS population FROM cities
-- JOIN countries ON countries.id = country_id
-- WHERE cities.population > 500000 AND countries.name = 'mexico'
-- ORDER BY cities.population DESC


-- # * languages from each country where percentage > 89
-- # return: order by percentage DESC
-- SELECT language, percentage, countries.name AS country FROM languages
-- JOIN countries ON countries.id = languages.country_id
-- WHERE percentage > 89
-- ORDER BY percentage DESC


-- # * countries where surface area < 501 and population > 100000
-- SELECT name, surface_area, population FROM countries
-- WHERE surface_area < 501 AND population > 100000


-- # * countries where monarchy = constitutional monarcy 
-- and capital > 200 
-- and life expectancy > 75
-- SELECT name, capital, life_expectancy FROM countries
-- WHERE government_form = 'Constitutional Monarchy'
-- AND life_expectancy > 75 AND capital > 200
-- ORDER BY life_expectancy DESC


-- # cities where country = argentina (select district = buenos aires)
-- and population > 500000
-- # return: coutry name, city name, district, population
-- SELECT cities.name AS city, cities.population AS population, countries.name AS country, district FROM cities
-- JOIN countries ON countries.id = cities.country_id
-- WHERE district = 'Buenos Aires' AND countries.name = 'Argentina'
-- AND cities.population > 500000


-- # count(countries) per region
-- # return: name of region, count(countries)
-- # order by count(coutries) DESC
-- SELECT region, COUNT(name) AS countries FROM countries
-- GROUP BY region
-- ORDER BY countries DESC
