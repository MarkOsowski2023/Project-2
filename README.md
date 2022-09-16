# Project-2

### The industry we have decided on is the Sports Industry. Our ETL Process Project will be specifically regarding baseball. The database will be used for those who want to predict what factors lead to increased attendance per game. We have chosen two datasets from two different sites that we will extract, transfrom, and load into a **relational** database that starts from the year 1990. 
Group Members: Mark Osowski and Karina Alvarez 

### Data Source 1:
[Here](https://www.seanlahman.com/baseball-archive/statistics/) is our first data source. This website contains many different tables of baseball data. We chose the extensive table that contains baseball teams data. This dataset includes factors like wins, losses, team rank, team home runs, and much more from 1871 to 2021. 

### Data Source 2:
[Here](https://www.baseball-reference.com/leagues/majors/2020-misc.shtml) is our second data source. This website has valuable charts of data on numerous pages of the website. This dataset contains statistics like the estimated payroll per team, average game time, all-stars, hall of famers, pitchers average, batters average age, etc. 

### Extract:
Our first data source was extracted in csv format and contained many missing ('NaN') values. For our second data source, the website had tables of valuable baseball data on numerous pages. In order to extract all of the data we needed, we scraped the website and each page of the website we needed.

### Transform:
For the first data source, in jupyter notebook, we read the csv and then we had to replace all the 'NaN' values with 0s. Next, we grabbed all of the rows that had an attendace number greater than 0 and put that into an updated dataframe. We then took out columns that we felt were irrelevant to the goal of our project (seeing what factors lead to increased attendance per game). Then, we did a similar process for attendance where we grabbed all of the rows that had a home game attendance of greater than 0 and put that into an updated dataframe. Next, we changed the data type object of the number of home games and attendance to integers. Since we are only using data from the year 1990, we used .loc and grabbed data from the years 1990 to 2021 (excluding 2020 due to cancellation of games from COVID-19). We also created a new column called attendendance per game by dividing attendance by home game number. Lastly, we renamed some of the columns to be more easily readable. 

For the second data source, once we scraped all of the data from the various pages of the website, we had to concatenate them and then transform them. We started off by adding a column named year ID to differentiate the years because it is not included in the data. The years were given on the website (table of data per year and page) and we used a for loop to add a year as the column number increases. In doing that we made sure to alter one of the columns years becuase the dataset did not include year 2020 (due to COVID-19). Next, we concatenated all the data from the website, we dropped unnecessary columns, and renamed some columns as well. 

### Load:
Our final database contains a table called 'season_stats' that holds the columns of our first data frame: (year_id, team_name, season_rank, games_played, home_games_played, home_park, wins, losses, runs_scored, home_runs, wild_card_winner, division_winner, league_winner, franchID, attendance, att_per_game). We defined 'yearID' as the primary key. 
We also have another table in our database called 'team_data' that holds the columns from our second data frame: (year_id, team_name, Est_Payroll, AllStars, AllTimeASapp, HoF, batters_avg_age, pitchers_avg_age, Batting_Park_Factor, Pitching_Park_Factor, AvgGameStartTime). We defined team_name as the primary key and 'yearID' as the foreign key. We then imported the renewed csv files into our newly created tables in jupyter notebook using pandas.

The reason we chose this topic is because we both find sports interesting, and we knew we wanted to choose an industry that has an overwhelming amount of data. In choosing sports as the industry, we narrowed it down to baseball being that it's the end of the baseball season and we are both Cubs fans. We feel that analyzing the data to determine what factors will increase baseball attendance is realistic for those who use our database. 

