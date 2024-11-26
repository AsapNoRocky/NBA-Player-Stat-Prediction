CREATE TABLE IF NOT EXISTS player_stats (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  player TEXT NOT NULL,
  stat TEXT NOT NULL,
  value INTEGER NOT NULL,
  game_date DATE NOT NULL
);

-- Example data (you can add more rows here)
INSERT INTO player_stats (player, stat, value, game_date) VALUES
('Stephen Curry', 'points', 30, '2024-11-01'),
('Stephen Curry', 'points', 25, '2024-11-03'),
('Stephen Curry', 'points', 15, '2024-11-05'),
('Stephen Curry', 'points', 20, '2024-11-07'),
('Stephen Curry', 'points', 22, '2024-11-09'),
('LeBron James', 'points', 28, '2024-11-01'),
('LeBron James', 'points', 35, '2024-11-03'),
('LeBron James', 'points', 30, '2024-11-05'),
('LeBron James', 'points', 27, '2024-11-07'),
('LeBron James', 'points', 33, '2024-11-09');
