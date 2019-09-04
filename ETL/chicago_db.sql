

CREATE TABLE public_health (
community_area TEXT PRIMARY KEY,
community_area_name TEXT,
unemployment INT,
dependency INT,
no_high_school_diploma INT
);

CREATE TABLE chicago_crime (
community_area TEXT PRIMARY KEY,
number_of_crimes INT
);

CREATE TABLE population (
community_area TEXT PRIMARY KEY,
population INT
);

