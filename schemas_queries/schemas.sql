DROP TABLE IF EXISTS SeasonStats;
DROP TABLE IF EXISTS TeamData;

CREATE TABLE SeasonStats (
	yearID INT NOT NULL,
	teamID VARCHAR NOT NULL,
	team_name VARCHAR NOT NULL,
	season_rank INT NOT NULL,
	games_played INT NOT NULL,
	home_games_played INT NOT NULL,
	home_park VARCHAR NOT NULL,
	wins INT NOT NULL,
	losses INT NOT NULL,
	runs_scored INT NOT NULL,
	home_runs INT NOT NULL,
	wild_card_winner VARCHAR NOT NULL,
	division_winner VARCHAR NOT NULL,
	league_winner VARCHAR NOT NULL,
	franchID VARCHAR NOT NULL,
	attendance INT NOT NULL,
	att_per_game INT NOT NULL,
	PRIMARY KEY (yearID)
);

CREATE TABLE TeamData (
	yearID INT NOT NULL,
	team_name VARCHAR NOT NULL,
	Est_Payroll VARCHAR NOT NULL,
	AllStars INT NOT NULL,
	AllTimeASapp INT NOT NULL,
	HoF INT NOT NULL,
	batters_avg_age INT NOT NULL,
	pitchers_avg_age INT NOT NULL,
	Batting_Park_Factor INT NOT NULL,
	Pitching_Park_Factor INT NOT NULL,
	AvgGameStartTime VARCHAR NOT NULL,
	FOREIGN KEY (yearID) REFERENCES SeasonStats (yearID),
	PRIMARY KEY (yearID)
); 