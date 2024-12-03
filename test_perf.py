import sqlite3
import time

def test_query_performance():
    conn = sqlite3.connect("nba_stats.db")
    cursor = conn.cursor()

    # Create composite index on player and stat
    cursor.execute("CREATE INDEX IF NOT EXISTS idx_player_stat ON player_stats(player, stat)")

    # Query with player and stat index
    query_with_index = """
    SELECT DISTINCT game_date, value
    FROM player_stats
    WHERE player = ? AND stat = ?
    ORDER BY game_date DESC
    LIMIT 5;
    """
    params_with_index = ['Anthony Davis', 'points']

    # Show query plan with index
    print("\nQuery Plan (with player and stat index):")
    cursor.execute(f"EXPLAIN QUERY PLAN {query_with_index}", params_with_index)
    plan = cursor.fetchall()
    for step in plan:
        print(f"Step {step[0]}: {step[3]}")

    # Measure time with index
    start_time = time.time()
    cursor.execute(query_with_index, params_with_index)
    results_with_index = cursor.fetchall()
    index_time = time.time() - start_time

    print(f"\nQuery with player and stat index took: {index_time:.4f} seconds")
    print(f"Results: {results_with_index}\n")

    # Drop index and test without it
    cursor.execute("DROP INDEX IF EXISTS idx_player_stat")

    # Simple query without index
    query_without_index = """
    SELECT DISTINCT game_date, value
    FROM player_stats
    WHERE player = ? AND stat = ?
    ORDER BY game_date DESC
    LIMIT 5;
    """
    params_without_index = ['Anthony Davis', 'points']

    # Show query plan without index
    print("\nQuery Plan (without index):")
    cursor.execute(f"EXPLAIN QUERY PLAN {query_without_index}", params_without_index)
    plan = cursor.fetchall()
    for step in plan:
        print(f"Step {step[0]}: {step[3]}")

    # Measure time without index
    start_time = time.time()
    cursor.execute(query_without_index, params_without_index)
    results_without_index = cursor.fetchall()
    no_index_time = time.time() - start_time

    print(f"\nQuery without index took: {no_index_time:.4f} seconds")
    print(f"Results: {results_without_index}")

    # Compare times
    print(f"\nPerformance difference: {(no_index_time - index_time):.4f} seconds")
    print(f"Index makes query {(no_index_time/index_time):.2f}x {'faster' if index_time < no_index_time else 'slower'}")

    conn.close()

if __name__ == "__main__":
    test_query_performance()