

WITH disaster_counts AS 
(
SELECT d.disaster_number, COUNT(d.disaster_number) AS record_count
FROM dex as d
GROUP BY disaster_number
)
SELECT d.disaster_number AS disaster_id,
title AS disaster_title,
a.state_code AS state_affected,
declaration_date AS date,
fy_declared,
incident_type AS disaster_type,
(SUM(CAST(federal_share_obligated AS money))/record_count) AS total_cost,
incident_length, 
COALESCE(declaration_duration, 0) 
FROM assistance AS a
LEFT JOIN dex AS d ON a.disaster_number = d.disaster_number
LEFT JOIN disaster_counts AS dc ON a.disaster_number = dc.disaster_number
WHERE fy_declared >= '2000'
GROUP BY disaster_id, state_affected, dc.record_count, title, date, fy_declared, incident_type, incident_length, declaration_duration
ORDER BY SUM(CAST(federal_share_obligated AS money)) DESC
/*OMG it's beautiful. Ok, this is the whole she-bang. Let's try to get proper counts for damage categories too, now*/

/* Now let's really be honest here: If am working in powerBI, I don't really acutally need this data to be linked with dates right now. Not at all*/

SELECT DISTINCT a.disaster_number, 
fy_declared,
damage_category, 
SUM(CAST(federal_share_obligated AS money)) AS damage_cost
FROM assistance AS a 
JOIN dex AS d
ON a.disaster_number = d.disaster_number
GROUP BY damage_category, a.disaster_number, fy_declared
ORDER BY damage_cost DESC

