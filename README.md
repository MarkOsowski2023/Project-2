# Project-2

### The industry we have decided on is the Sports Industry. Our ETL Process Project will be specifically regarding baseball. The database we will create will be used for those who want to predict what factors lead to increased attendance per game. We have chosen two datasets from two different sites that we will extract, transfrom, and load into a **relational** database that starts from the year 1990. 
Group Members: Mark Osowski and Karina Alvarez 

### Data Source 1:
[Here](https://www.seanlahman.com/baseball-archive/statistics/) is our first data source. This dataset contains baseball teams, and their statistics starting from 1871 to 2021. 

### Data Source 2:
[Here](https://www.baseball-reference.com/leagues/majors/2020-misc.shtml) is our second data source. This dataset contains the estimated payroll per team, including all stars, hall of famers, pitchers, and batters average age. 

### Extract:
Our first data source was extracted in csv format and contained many missing ('NaN') values. For our second data source, the website had tables of valuable baseball data on numerous pages. In order to extract all of the data we needed, we scraped the website and each page of the website we needed.

### Transform:
For the first data source, in jupyter notebook we read the csv and then we had to replace all the 'NaN' values with 0s.  