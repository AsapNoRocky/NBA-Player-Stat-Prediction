from flask import Flask, render_template, request, jsonify
import sqlite3

app = Flask(__name__)

# Helper function to fetch stats from the database
def fetch_player_stats(player, stat):
    conn = sqlite3.connect("nba_stats.db")
    cursor = conn.cursor()
    query = """
    SELECT value
    FROM player_stats
    WHERE player = ? AND stat = ?
    ORDER BY game_date DESC
    LIMIT 5;
    """
    cursor.execute(query, (player, stat))
    result = [row[0] for row in cursor.fetchall()]
    conn.close()
    return result

@app.route('/')
def index():
    return render_template('index.html')

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

        if not last_five_games:
            return jsonify({"error": f"No data found for {player} and {stat}"}), 404

        # Calculate likelihood based on the operator
        if operator == ">":
            likelihood = (sum(1 for x in last_five_games if x > value) / len(last_five_games)) * 100
        elif operator == "<":
            likelihood = (sum(1 for x in last_five_games if x < value) / len(last_five_games)) * 100
        elif operator == "=":
            likelihood = (sum(1 for x in last_five_games if x == value) / len(last_five_games)) * 100
        else:
            return jsonify({"error": "Invalid operator"}), 400

        # Determine color class based on likelihood
        if likelihood > 55:
            color_class = "green"
        elif likelihood >= 45:
            color_class = "yellow"
        else:
            color_class = "red"

        # Generate response
        response = {
            "player": player,
            "stat": stat,
            "condition": f"{operator} {value}",
            "prediction": f"{likelihood:.2f}% likely",
            "analysis": "Based on the player's last 5 games",
            "color_class": color_class  # Add color class
        }
        return jsonify(response)

    except Exception as e:
        print("Error during prediction:", e)
        return jsonify({"error": "An unexpected error occurred"}), 500

if __name__ == "__main__":
    app.run(debug=True)
