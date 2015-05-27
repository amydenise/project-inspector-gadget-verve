--create schema amy_hepner;

/*CREATE TABLE amy_hepner.Building_Violations_sample_50000 (
	mattgee_key INTEGER NOT NULL, 
	"ID" INTEGER NOT NULL, 
	"VIOLATION LAST MODIFIED DATE" DATE NOT NULL, 
	"VIOLATION DATE" DATE NOT NULL, 
	"VIOLATION CODE" VARCHAR(8) NOT NULL, 
	"VIOLATION STATUS" VARCHAR(8) NOT NULL, 
	"VIOLATION STATUS DATE" DATE, 
	"VIOLATION DESCRIPTION" VARCHAR(30), 
	"VIOLATION LOCATION" VARCHAR(229), 
	"VIOLATION INSPECTOR COMMENTS" VARCHAR(3790), 
	"VIOLATION ORDINANCE" VARCHAR(807), 
	"INSPECTOR ID" VARCHAR(9) NOT NULL, 
	"INSPECTION NUMBER" INTEGER NOT NULL, 
	"INSPECTION STATUS" VARCHAR(6) NOT NULL, 
	"INSPECTION WAIVED" BOOLEAN NOT NULL, 
	"INSPECTION CATEGORY" VARCHAR(12) NOT NULL, 
	"DEPARTMENT BUREAU" VARCHAR(26) NOT NULL, 
	"ADDRESS" VARCHAR(30) NOT NULL, 
	"PROPERTY GROUP" INTEGER NOT NULL, 
	"SSA" FLOAT, 
	"LATITUDE" FLOAT, 
	"LONGITUDE" FLOAT, 
	"LOCATION" VARCHAR(39)
);*/

SELECT mattgee_key, "ID", "VIOLATION LAST MODIFIED DATE", "VIOLATION DATE", "VIOLATION CODE", "VIOLATION STATUS", "VIOLATION STATUS DATE", "VIOLATION DESCRIPTION", "VIOLATION LOCATION", "VIOLATION INSPECTOR COMMENTS", "VIOLATION ORDINANCE", "INSPECTOR ID", "INSPECTION NUMBER", "INSPECTION STATUS", "INSPECTION WAIVED", "INSPECTION CATEGORY", "DEPARTMENT BUREAU", "ADDRESS", "PROPERTY GROUP", "SSA", "LATITUDE", "LONGITUDE", "LOCATION"
FROM amy_hepner.building_violations_sample_50000;

SELECT COUNT(*) FROM amy_hepner.building_violations_sample_50000;

SELECT COUNT(*) FROM amy_hepner.building_violations_sample_50000 WHERE "VIOLATION DATE" >= '2015-05-01';

SELECT DISTINCT("INSPECTOR ID") FROM amy_hepner.building_violations_sample_50000;

SELECT COUNT(DISTINCT("INSPECTOR ID")) FROM amy_hepner.building_violations_sample_50000;

SELECT "INSPECTOR ID", COUNT(*), "VIOLATION STATUS" FROM amy_hepner.building_violations_sample_50000 
	GROUP BY "INSPECTOR ID", "VIOLATION STATUS"
	ORDER BY "INSPECTOR ID";

