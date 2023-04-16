Olympics Data Set

/*
Olympics Data Exploration 
Skills used: COUNT, DISTINCT, AVG, Comparison operators, Group By, Order By, Aliases.
*/


--How many athletes played in each Olympic Game after the 2000 Olympic Game?

1.
SELECT COUNT(DISTINCT ID) as Total_Athletes
FROM athlete_events
WHERE Year > 2000;

--Are the number of medals per athlete increasing over time?

2.
SELECT COUNT(Medal), COUNT(DISTINCT ID) as Individual_Athlete, Year, COUNT(Medal)/COUNT(DISTINCT ID) as Medal_per_athlete
FROM athlete_events
WHERE Medal <> 'NA'
Group BY Year
ORDER BY YEAR DESC;

--Which is the Sport with the most medals and what is the associated average age of athletes in those sports?

3. 
SELECT COUNT(Medal), Sport, AVG(Age)
FROM athlete_events
WHERE Medal <> 'NA'
Group BY Sport
ORDER BY COUNT(Medal) DESC;


