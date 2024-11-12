import numpy as np
from sklearn.linear_model import LinearRegression

def make_prediction(recent_games):
    points = [game["points"] for game in recent_games]
    games_played = np.arange(len(points)).reshape(-1, 1)

    model = LinearRegression()
    model.fit(games_played, points)

    next_game_prediction = model.predict([[len(points)]])[0]
    return {"isGoodWager": next_game_prediction > 20}
