#TASK1
SELECT *
FROM city;

SELECT COUNT(CountyCode)
FROM city
WHERE CounryCode = "USA";

SELECT COUNT(Distinct "USA")
FROM city;

#TASK2
SELECT *
FROM country
WHERE LifeExpectancy = "ARG";
#dindt work

SELECT LifeExpectancy
FROM country 
WHERE country IN ("Argentina");
#dindt work

SELECT *
FROM country
Where "ARG" = LifeExpectancy;
#dindt work

SELECT CountryCode, avg(Population) AS LifeExpectancy  FROM city
WHERE CountryCode = 'ARG';
#Asked for help and didnt realise the questinion wanted me to combined the stats

SELECT AVG(lifeExpectancy),Population
FROM country
WHERE Code = 'ARG';

#TASK3
SELECT Name
FROM country
ORDER BY LifeExpectancy LIMIT 1;
 
#TASK4
SELECT *
FROM city
WHERE Name LIKE "F%" LIMIT 25;

#TASK5
SELECT ID, Name, Population
FROM city
LIMIT 10; 

#TASK6
SELECT *
FROM city
WHERE population > 2000000;

#TASK7
SELECT *
FROM city
WHERE name like "BE%";

#TASK8
SELECT *
FROM city
WHERE population BETWEEN 1000000 AND 5000000;

#TASK9
SELECT MIN(population)
FROM city;

SELECT *
FROM city
WHERE population = (SELECT MIN(population) FROM city);

#TASK10 (HAS ISSUE returning only nulls)
SELECT Code, Capital
FROM country 
WHERE 'ESP' = Capital;

#TASK11 (ASKED CHAT GPT WITH HELP FOR THIS ONE AS I HAD TROUBLE JOINING THE TABLES FROM MEMORY)
SELECT *
FROM country
WHERE Region like '%caribbean%' = (SELECT);

SELECT *
FROM country;

SELECT *
FROM countrylanguage

SELECT countrylanguage.Language
FROM countrylanguage
JOIN Code ON countrylanguage.CountryCode = code.CountryCode
WHERE Code.CounrtCode = 'Caribbean';

SELECT countrylanguage.Language
FROM countrylanguage
JOIN Country ON countrylanguage.CountryCode = Country.Code
WHERE Country.Region = 'Caribbean';


#TASK12
SELECT *
FROM country;

SELECT *
FROM city;

SELECT city.Name
FROM city
JOIN country ON city.Countrycode = country.code
WHERE country.continent = 'Europe'; 