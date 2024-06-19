SELECT SUM(city.population)
FROM CITY
JOIN COUNTRY
ON city.countrycode = country.code
WHERE continent = 'Asia';
