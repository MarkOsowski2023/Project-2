# Project-2

### The industry we have decided on is the Sports Industry. Our ETL Process Project will be specifically regarding baseball. The database will be used for those who want to predict what factors lead to increased attendance per game. We have chosen two datasets from two different sites that we will extract, transfrom, and load into a **relational** database that starts from the year 1990. 
Group Members: Mark Osowski and Karina Alvarez 

### Data Source 1:
[Here](https://www.seanlahman.com/baseball-archive/statistics/) is our first data source. This dataset contains baseball teams, and their statistics starting from 1871 to 2021. 

### Data Source 2:
[Here](https://www.baseball-reference.com/leagues/majors/2020-misc.shtml) is our second data source. This dataset contains the estimated payroll per team, including all stars, hall of famers, pitchers, and batters average age. 

### Extract:
Our first data source was extracted in csv format and contained many missing ('NaN') values. For our second data source, the website had tables of valuable baseball data on numerous pages. In order to extract all of the data we needed, we scraped the website and each page of the website we needed.

### Transform:
For the first data source, in jupyter notebook we read the csv and then we had to replace all the 'NaN' values with 0s. Next, we took grabbed all of the rows that had an attendace of greater than 0 and put that into an updated dataframe. We then took out columns that we felt were irrelevant to the goal of our project (seeing what factors lead to increased attendance per game), and then we did a similar process for attendance where we grabbed all of the rows that had a home game attendance of greater than 0 and put that into an updated dataframe. We then changed the data type object of home game and attendance to integers. Since we are only using data from the year 1990, we used .loc and grabbed data from the year 1990 and up to 2021 (excluding 2020 due to cancellation of games from COVID-19). We also created a new column called attendendance per game by dividing attendance by home game number. Lastly, we renamed some of the columns to be more easily readable. 

For the second data source, once we scraped all of the data from the various pages of the website, we had to concatenate them and then transform them. We started off by adding a column named season ID to differentiate the years because it is not included in the data. The years were given on the website (table of data per year and page) and we used a for loop to add a year as the column number increases. In doing that we made sure to alter one of the columns years becuase the dataset did not include year 2020 (dur to COVID-19). Next, we concatenated all the data from the website, we dropped unnecessary columns, and renames some columns as well. 

### Load
Our final database contains a table called 'team_performance' that holds the columns of our second data source: ... . We defined yearID as the primary key and team* as the foreign key.
We also have another table in our database called '...' that holds the columns of our first data source: ...
Earlier we declared our database to be a relational database, the reason that holds true is because we have a the table connects through the primary keys and the foreign keys. 

The reason we chose this topic is because we both find sports interesting, and we knew we wanted to choose an industry that has an overwhelming amount of data. In choosing sports as the industry, we narrowed it down to baseball being that it's the end of the baseball season and we are both Cubs fans. We feel that focusing on analyzing what factors will increase baseball attendance is realistic for those who use our database. 

