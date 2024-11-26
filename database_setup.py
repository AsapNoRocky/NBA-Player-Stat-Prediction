import sqlite3
import pandas as pd

# Sample data
data = [
    {"player_name": "Stephen Curry", "game_date": "2024-11-01", "points": 30, "rebounds": 5, "blocks": 0, "steals": 2, "turnovers": 3},
    {"player_name": "Stephen Curry", "game_date": "2024-11-03", "points": 25, "rebounds": 4, "blocks": 1, "steals": 1, "turnovers": 2},
    {"player_name": "LeBron James", "game_date": "2024-11-01", "points": 25, "rebounds": 8, "blocks": 1, "steals": 2, "turnovers": 3},
    {"player_name": "LeBron James", "game_date": "2024-11-03", "points": 28, "rebounds": 10, "blocks": 1, "steals": 1, "turnovers": 4},
]

# Connect to SQLite database
db_path = 'nba_stats.db'
conn = sqlite3.connect(db_path)

# Create table
conn.execute("""
CREATE TABLE IF NOT EXISTS player_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_name TEXT NOT NULL,
    game_date DATE NOT NULL,
    points INTEGER,
    rebounds INTEGER,
    blocks INTEGER,
    steals INTEGER,
    turnovers INTEGER
);
""")

# Insert data
df = pd.DataFrame(data)
df.to_sql('player_stats', conn, if_exists='replace', index=False)

print("Database setup complete. Data inserted.")
conn.close()
