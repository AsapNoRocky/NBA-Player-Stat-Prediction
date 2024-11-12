# NBA_Wager_138

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
