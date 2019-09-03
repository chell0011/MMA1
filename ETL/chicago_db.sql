-- Create tables for raw data to be loaded into
CREATE TABLE public_health (
id INT,
community_area TEXT PRIMARY KEY,
community_area_name TEXT,
unemployment INT,
dependency INT,
no_high_school_diploma INT
);

CREATE TABLE merged_table (
id INT,
community_area TEXT PRIMARY KEY,
total_number_of_crimes INT,
population INT,
crime_rate INT,
drug_related_crime INT
);

-- Joins tables
SELECT public_health.id, public_health.community_area, public_health.community_area_name, public_health.unemployment, public_health.dependency, public_health.no_high_school_diploma, 
	merged_table.total_number_of_crimes, merged_table.population, merged_table.crime_rate, merged_table.drug_related_crime
FROM public_health
JOIN merged_table
ON public_health.community_area = merged_table.community_area;