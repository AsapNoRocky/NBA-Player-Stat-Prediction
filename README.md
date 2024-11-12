**VIEW AS CODE TO SEE BREAKDOWN**

.py files are backend
.js files are frontend 

**Frontend Project Structure:**
nba-betting-frontend/
│
├── public/
│   └── index.html
│
├── src/
│   ├── components/
│   │   ├── PlayerSelect.js       # Dropdown for player selection
│   │   ├── StatWagerInput.js     # Stat selection and threshold input
│   │   ├── WagerResult.js        # Shows "GOOD WAGER" or "BAD WAGER"
│   ├── App.js                    # Main app component
│   ├── index.js                  # Main render file
│   └── api.js                    # API requests
│
└── package.json                  # Dependencies


**Backend Project Structure:**
nba-betting-backend/
│
├── app/
│   ├── __init__.py       # Initializes Flask and MySQL connection
│   ├── config.py         # Configuration for MySQL
│   ├── models.py         # Database models and queries for Player and Game
│   ├── routes.py         # API routes to get player stats and make predictions
│   └── prediction.py     # Prediction logic for the next game
│
├── requirements.txt      # Dependencies
└── run.py                # Entry point to start Flask server


Abstract: 
Predictive Sports Betting 

The objective of this project is to develop a predictive sports betting application using the NBA Dataset sourced from Kaggle public datasets. The application will focus on analyzing player performance trends, and evaluating whether it is a good bet to wager on a player achieving a certain in-game statistic in their next scheduled game. For example, the program will assess whether placing a bet on Stephen Curry scoring more than 20 points in his next game, based on his performance in the last 10 games, is a wager that would win. By using statistical analysis of player data, the application will provide users with insights into betting opportunities, highlighting if a wager is likely to be profitable. The tool will be designed with a user interface that presents relevant player statistics, trends, and predictions in an. The NBA dataset will serve as a foundation to ensure that the application is well-aligned with real-world data, offering value to users interested in NBA betting.

Key features of the project include:

A detailed player performance analysis based on historical data.
A prediction model that evaluates the likelihood of specific statistical outcomes.
A user interface that makes it easy to navigate and understand the predictions.

The dataset chosen for the application, provides comprehensive player statistics, allowing for accurate modeling and prediction of player performance in the context of betting. The dataset has 30 teams, 4800+ players, 65,000+ games (every game since the inaugural 1946-47 NBA season), Box Scores for over 95% of all games and Play-by-Play game data with 13M+ rows of Play-by-Play data in all. 


NBA Dataset  - https://www.kaggle.com/datasets/wyattowalsh/basketball
