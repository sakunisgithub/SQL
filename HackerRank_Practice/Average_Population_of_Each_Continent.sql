WITH continent_and_city AS
(
    SELECT COUNTRY.CONTINENT AS continent,
           CITY.POPULATION AS city_population
    FROM COUNTRY
    INNER JOIN CITY
        ON COUNTRY.CODE = CITY.COUNTRYCODE
)
SELECT continent, FLOOR(AVG(city_population))
FROM continent_and_city
GROUP BY CONTINENT;