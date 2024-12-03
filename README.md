Lawrence Adug 014099709
Javier Alonso Cardenas 015842567
Bryan Hui 014183026
Sagar Kanda 012510329

CMPE 138 Project Abstract
Predictive Sports Betting

The objective of this project is to develop a predictive sports betting application using the
NBA Dataset sourced from Kaggle public datasets and edited for the purpose of this application. The application will focus on analyzing
player performance trends, and evaluating whether it is a good bet to wager on a player
achieving a certain in-game statistic in their next scheduled game. For example, the program
will assess whether placing a bet on Stephen Curry scoring more than 20 points in his next
game, based on his performance in the last 5 games, is a wager that would win. By using
statistical analysis of player data, the application will provide users with insights into betting
opportunities, highlighting if a wager is likely to be profitable. The tool will be designed with a
user interface that presents relevant player statistics, trends, and predictions. The NBA
dataset will serve as a foundation to ensure that the application is well-aligned with real-world
data, offering value to users interested in NBA betting.
Key features of the project include:

- A detailed player performance analysis based on historical data.
- A prediction model that evaluates the likelihood of specific statistical outcomes.
- A user interface that makes it easy to navigate and understand the predictions.

The dataset chosen for the application, provides comprehensive player statistics, allowing for
accurate modeling and prediction of player performance in the context of betting. The dataset
has 30 teams, 4800+ players, 65,000+ games (every game since the inaugural 1946-47 NBA
season), Box Scores for over 95% of all games and Play-by-Play game data with 13M+ rows of
Play-by-Play data in all. The dataset was edited to only include the top 10 NBA players based off ESPN ratings
for the purpose of this project. 

To run app on web browser. Enter in console:
'python app.py' or 'python3 app.py'
If above does not work, you may need to run this command first to update the db: 'sqlite3 nba_stats.db < setup_db.sql'
To test performance of indexing optimization, run:
'python test_perf.py'

A Tentative Schedule (week by week)
Week of:
11/5
- Project Abstract
11/12
- Data Analysis and Feature Implementation
11/19
- Application Development and Integration
11/26
- Testing, Final Adjustments, and Report Preparation
12/3
- Project Report Due
12/6
- Project Demo Day

https://replit.com/@sagar2kanda/NBAWagerApp
