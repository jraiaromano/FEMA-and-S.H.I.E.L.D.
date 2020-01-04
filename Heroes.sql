SELECT p.*
FROM heroes AS h
JOIN powers AS p
ON h.name=p.name
WHERE publisher LIKE 'Marvel%'

SELECT publisher 
FROM heroes

/*ok this is all the powers that our firendly marvel heroes have. lets start paring down into powers.
I'll start with heroes that have weather-specific powers*/

SELECT p.name, wind_control, weather_control
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true
OR weather_control = true;
/* I see some helpful people around here. specifically: crystal, storm, and tempest. 

OK, now lets look for our kinetics. There are going to be a bunch, I suspect*/
SELECT p.name,
cryokinesis, 
magnetism,
vitakinesis,
electrokinesis,
terrakinesis
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND cryokinesis = true
OR magnetism = true
OR vitakinesis = true
OR electrokinesis = true
OR terrakinesis = true;
/* Oh look, it's tempest! maybe she would make a good team lead.

and now our elementalists*/

SELECT p.name,
fire_control, 
water_control,
plant_control,
animal_control,
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND fire_control = true
OR water_control = true
OR plant_control = true
OR electrokinesis = true
OR animal_control = true;

/* And now just useful powers: flight, barriers, teleportation, etc.*/

SELECT p.name,
flight, 
super_speed,
teleportation,
portal_creation,
x_ray_vision,
thermal_vision
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND flight = true
OR super_speed = true
OR teleportation = true
OR portal_creation = true
OR x_ray_vision = true
OR thermal_vision = true

/*Ok big ol' list o' heroes. all useful talents. This may be part of my dashboard*/

SELECT *
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true
OR weather_control = true
OR fire_control = true
OR water_control = true
OR plant_control = true
AND cryokinesis = true
OR magnetism = true
OR vitakinesis = true
OR electrokinesis = true
OR terrakinesis = true;
OR electrokinesis = true
OR animal_control = true
OR seismic_power = true
OR flight = true
OR super_speed = true
OR teleportation = true
OR portal_creation = true
OR x_ray_vision = true
OR thermal_vision = true;

/*Ok now for the giant PITA. Let's make our teams. I want to make a table that give a boolean for which team each hero is on. 
I have 6 teams: fire, flood, severe storm(s), severe ice storm, hurricane, snow
I need to decide which powers should apply to each disaster, and then divide accordingly.*/

/*Fire*/
SELECT p.name 
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true 
OR weather_control = true 
OR fire_control = true 
OR water_control = true
/*OR plant_control = true*/
/*OR magnetism = true
OR vitakinesis = true*/
OR terrakinesis = true
/*OR electrokinesis = true
OR flight = true
OR super_speed = true
OR teleportation = true
OR portal_creation = true
OR x_ray_vision = true
OR thermal_vision = true;*/

 /*Flood*/
SELECT p.name
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true
OR water_control = true
/*OR plant_control = true
OR magnetism = true
OR vitakinesis = true
OR electrokinesis = true*/
OR terrakinesis = true
/*OR animal_control = true
OR flight = true
OR super_speed = true
OR teleportation = true*/
OR portal_creation = true
/*OR x_ray_vision = true
OR thermal_vision = true;*/

/*severe storm(s), severe ice storms*/
SELECT p.name
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true
OR weather_control = true
OR fire_control = true
OR water_control = true
OR cryokinesis = true
OR magnetism = true
OR vitakinesis = true
OR electrokinesis = true
OR terrakinesis = true
OR seismic_power = true
OR flight = true
OR super_speed = true
OR teleportation = true
OR portal_creation = true
OR x_ray_vision = true
OR thermal_vision = true;

/*hurricane*/
SELECT p.name
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true
OR weather_control = true
OR water_control = true
/*OR magnetism = true
OR vitakinesis = true
OR electrokinesis = true
OR seismic_power = true
OR flight = true
OR super_speed = true
OR teleportation = true
OR portal_creation = true
OR x_ray_vision = true
OR thermal_vision = true;*/

SELECT p.name, wind_control, weather_control, fire_control, water_control, plant_control, cryokinesis, terrakinesis, portal_creation
FROM powers AS p
JOIN heroes AS h
ON p.name = h.name
WHERE p.name IN
	(SELECT p.name
	FROM heroes AS h
	JOIN powers AS p
	ON h.name=p.name
	WHERE publisher LIKE 'Marvel%')
AND wind_control = true
OR weather_control = true
OR fire_control = true
OR water_control = true
OR cryokinesis = true
OR portal_creation = true
OR terrakinesis = true;