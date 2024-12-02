from flask import Flask, render_template, request, jsonify
import sqlite3

app = Flask(__name__)

# function to fetch stats from the database
def fetch_player_stats(player, stat):
    # Connect to SQL Database
    conn = sqlite3.connect("nba_stats.db")
    cursor = conn.cursor()

    # SQL query to fetch the last 5 games data for a player's stat
    query = """
    SELECT DISTINCT game_date, value
    FROM player_stats
    WHERE player = ? AND stat = ?
    ORDER BY game_date DESC
    LIMIT 5;
    """
    cursor.execute(query, (player, stat)) # Query with player and stat parameters
    result = cursor.fetchall() # results
    conn.close() # close connection 

    if len(result) < 5:
        return {"error": f"Not enough data found for {player} and {stat}"}

    return result
    
# Route to main page
@app.route('/')
def index():
    return render_template('index.html')

# Fetch list of players
@app.route('/players', methods=['GET'])
def get_players():
    try:
        conn = sqlite3.connect("nba_stats.db") # Connect to SQL Database
        cursor = conn.cursor()

        # Query to fetch distinct player names
        query = "SELECT DISTINCT player FROM player_stats;"
        cursor.execute(query)
        players = [row[0] for row in cursor.fetchall()]
        conn.close()

        return jsonify({"players": players})

    # Error Checking
    except Exception as e:
        print("Error fetching players:", e)
        return jsonify({"error": "An error occurred while fetching players."}), 500

@app.route('/predict', methods=['POST'])
def predict():
    try:
        data = request.get_json()
        player = data.get('player')
        stat = data.get('stat')
        operator = data.get('operator')
        value = int(data.get('value', 0))

        # Fetch stats for the last 5 games
        last_five_games = fetch_player_stats(player, stat)

        if isinstance(last_five_games, dict) and last_five_games.get('error'):
            return jsonify(last_five_games), 404

        # Calculate likelihood based on condition <,>,=
        if operator == ">":
            likelihood = (sum(1 for x in last_five_games if x[1] > value) / len(last_five_games)) * 100
        elif operator == "<":
            likelihood = (sum(1 for x in last_five_games if x[1] < value) / len(last_five_games)) * 100
        elif operator == "=":
            likelihood = (sum(1 for x in last_five_games if x[1] == value) / len(last_five_games)) * 100
        else:
            return jsonify({"error": "Invalid operator"}), 400

        # Determine color class based on likelihood
        if likelihood > 55:
            color_class = "green"
        elif likelihood >= 45:
            color_class = "yellow"
        else:
            color_class = "red"

        # Preparing the response
        response = {
            "player": player,
            "stat": stat,
            "condition": f"{operator} {value}",
            "prediction": f"{likelihood:.2f}% likely",
            "analysis": "Based on the player's last 5 games",
            "color_class": color_class,
            "lastFiveGames": [{"game_date": game[0], "value": game[1]} for game in last_five_games]  # last 5 game data
        }

        return jsonify(response)

    except Exception as e:
        print("Error during prediction:", e)
        return jsonify({"error": "An error occurred"}), 500

# run flask 
if __name__ == "__main__":
    app.run(debug=True)
