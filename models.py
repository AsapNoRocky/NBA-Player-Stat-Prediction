from . import mysql

class Player:
    @staticmethod
    def get_player_stats(player_id):
        cursor = mysql.connection.cursor()
        cursor.execute("SELECT * FROM players WHERE id = %s", (player_id,))
        player_stats = cursor.fetchone()
        cursor.close()
        return player_stats

class Game:
    @staticmethod
    def get_recent_games(player_id, limit=10):
        cursor = mysql.connection.cursor()
        cursor.execute("SELECT * FROM games WHERE player_id = %s ORDER BY date DESC LIMIT %s", (player_id, limit))
        games = cursor.fetchall()
        cursor.close()
        return games
