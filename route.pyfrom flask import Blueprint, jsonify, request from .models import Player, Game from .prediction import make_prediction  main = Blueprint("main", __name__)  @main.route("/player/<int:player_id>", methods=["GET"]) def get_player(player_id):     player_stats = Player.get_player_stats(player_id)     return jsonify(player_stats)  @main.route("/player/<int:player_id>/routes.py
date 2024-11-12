from flask import Blueprint, jsonify, request
from .models import Player, Game
from .prediction import make_prediction

main = Blueprint("main", __name__)

@main.route("/player/<int:player_id>", methods=["GET"])
def get_player(player_id):
    player_stats = Player.get_player_stats(player_id)
    return jsonify(player_stats)

@main.route("/player/<int:player_id>/predict", methods=["GET"])
def predict_player_stats(player_id):
    recent_games = Game.get_recent_games(player_id)
    prediction = make_prediction(recent_games)
    return jsonify(prediction)
