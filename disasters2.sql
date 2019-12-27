/* NB: working with Katrina specifically because I am most familiar with it but does the same thing with any and all disaster numbers
this will pop out the correct cost for katrina*/

SELECT DISTINCT a.disaster_number AS disaster,
a.state_code,
SUM(CAST(federal_share_obligated AS money)) AS cost
FROM assistance AS a
WHERE a.disaster_number = '1603'
GROUP BY disaster, a.state_code
ORDER BY cost DESC

/*as soon as I try to join the other dataset, even if I don't select anything from it, like here, the cost gets multiplied 
by the number of records in the declarations dataset.
The commented code is what I am trying to use to offset this*/

SELECT DISTINCT a.disaster_number AS disaster,
a.state_code,
SUM(CAST(federal_share_obligated AS money)),
COUNT(a.disaster_number) AS records,
/*(SUM(CAST(federal_share_obligated AS money))/COUNT(d.disaster_number)) AS cost*/
FROM assistance AS a
LEFT JOIN declarations AS d
ON a.disaster_number = d.disaster_number
WHERE a.disaster_number = '1603'
GROUP BY disaster, a.state_code
ORDER BY SUM(CAST(federal_share_obligated AS money)) DESC

/* this is where I have been checking the number the cost is being multiplied by just to make sure*/
SELECT COUNT(disaster_number)
FROM assistance
WHERE disaster_number = '1603'

