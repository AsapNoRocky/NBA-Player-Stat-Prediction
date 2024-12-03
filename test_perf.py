import sqlite3
import time

def test_query_performance():
    conn = sqlite3.connect("nba_stats.db")
    try:
        cursor = conn.cursor()

        # Create composite index on player and stat (if not exists)
        cursor.execute("CREATE INDEX IF NOT EXISTS idx_player_stat ON player_stats(player, stat)")

        # Query with index
        query_with_index = """
        SELECT DISTINCT game_date, value
        FROM player_stats
        WHERE player = ? AND stat = ?
        ORDER BY game_date DESC
        LIMIT 5;
        """
        params = ['Anthony Davis', 'points']

        # Show query plan with index
        print("\nQuery Plan (with player and stat index):")
        cursor.execute(f"EXPLAIN QUERY PLAN {query_with_index}", params)
        plan = cursor.fetchall()
        for step in plan:
            print(f"Step {step[0]}: {step[3]}")

        # Measure time with index
        start_time = time.time()
        cursor.execute(query_with_index, params)
        results_with_index = cursor.fetchall()
        index_time = time.time() - start_time

        print(f"\nQuery with player and stat index took: {index_time:.4f} seconds")
        print(f"Results: {results_with_index}\n")

        # Measure time without dropping the index
        print("\nQuery Plan (with index intact):")
        start_time = time.time()
        cursor.execute(query_with_index, params)
        results_with_index = cursor.fetchall()
        repeat_time = time.time() - start_time
        print(f"Query repeated (with index intact) took: {repeat_time:.4f} seconds")

    finally:
        conn.close()  # Ensure connection is closed even if errors occur

if __name__ == "__main__":
    test_query_performance()
