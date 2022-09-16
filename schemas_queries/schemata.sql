DROP TABLE IF EXISTS Season;
DROP TABLE IF EXISTS seasonstats CASCADE;
DROP TABLE IF EXISTS teamdata CASCADE;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Franchise;
DROP TABLE IF EXISTS TeamAbbrv;
DROP TABLE IF EXISTS SeasonAttendance;

-- create table Season
CREATE TABLE Season (
	seasonID SERIAL PRIMARY KEY,
	season VARCHAR NOT NULL	
);

-- create table Team
CREATE TABLE Team (
	teamID SERIAL PRIMARY KEY,
	team VARCHAR NOT NULL
);

--create table Franchise
CREATE TABLE Franchise (
	franID SERIAL PRIMARY KEY,
	franchise VARCHAR NOT NULL
);

--create table TeamAbbrv
CREATE TABLE TeamAbbrv (
	teamabbrvID SERIAL PRIMARY KEY,
	teamAbbrv VARCHAR NOT NULL
);

--create table SeasonAttendance
Create table SeasonAttendance (
	seasonID INT NOT NULL,
	teamabbrvID INT NOT NULL,
	franID INT NOT NULL,
	teamID INT NOT NULL, 
	attendance INT NOT NULL,
	PRIMARY KEY (seasonID, teamabbrvID),
	FOREIGN KEY (franID) REFERENCES Franchise (franID),
	FOREIGN KEY (teamID) REFERENCES Team (teamID)
);

