-- Create the table to store stats
CREATE TABLE IF NOT EXISTS player_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player TEXT NOT NULL,
    stat TEXT NOT NULL,
    value INTEGER NOT NULL,
    game_date DATE NOT NULL
);

-- Inserting data for Players (last 5 games), seperated by stat line. 
INSERT INTO player_stats (player, stat, value, game_date) VALUES
-- Lebron James
('LeBron James', 'points', 25, '2024-11-10'),
('LeBron James', 'rebounds', 7, '2024-11-10'),
('LeBron James', 'steals', 3, '2024-11-10'),
('LeBron James', 'blocks', 1, '2024-11-10'),
('LeBron James', 'turnovers', 4, '2024-11-10'),

('LeBron James', 'points', 27, '2024-11-12'),
('LeBron James', 'rebounds', 8, '2024-11-12'),
('LeBron James', 'steals', 2, '2024-11-12'),
('LeBron James', 'blocks', 1, '2024-11-12'),
('LeBron James', 'turnovers', 3, '2024-11-12'),

('LeBron James', 'points', 22, '2024-11-14'),
('LeBron James', 'rebounds', 6, '2024-11-14'),
('LeBron James', 'steals', 1, '2024-11-14'),
('LeBron James', 'blocks', 1, '2024-11-14'),
('LeBron James', 'turnovers', 3, '2024-11-14'),

('LeBron James', 'points', 30, '2024-11-16'),
('LeBron James', 'rebounds', 9, '2024-11-16'),
('LeBron James', 'steals', 4, '2024-11-16'),
('LeBron James', 'blocks', 2, '2024-11-16'),
('LeBron James', 'turnovers', 5, '2024-11-16'),

('LeBron James', 'points', 28, '2024-11-18'),
('LeBron James', 'rebounds', 10, '2024-11-18'),
('LeBron James', 'steals', 2, '2024-11-18'),
('LeBron James', 'blocks', 3, '2024-11-18'),
('LeBron James', 'turnovers', 4, '2024-11-18'),

-- Kevin Durant
('Kevin Durant', 'points', 27, '2024-11-11'),
('Kevin Durant', 'rebounds', 6, '2024-11-11'),
('Kevin Durant', 'steals', 1, '2024-11-11'),
('Kevin Durant', 'blocks', 2, '2024-11-11'),
('Kevin Durant', 'turnovers', 3, '2024-11-11'),

('Kevin Durant', 'points', 30, '2024-11-13'),
('Kevin Durant', 'rebounds', 7, '2024-11-13'),
('Kevin Durant', 'steals', 2, '2024-11-13'),
('Kevin Durant', 'blocks', 1, '2024-11-13'),
('Kevin Durant', 'turnovers', 2, '2024-11-13'),

('Kevin Durant', 'points', 25, '2024-11-15'),
('Kevin Durant', 'rebounds', 5, '2024-11-15'),
('Kevin Durant', 'steals', 1, '2024-11-15'),
('Kevin Durant', 'blocks', 3, '2024-11-15'),
('Kevin Durant', 'turnovers', 4, '2024-11-15'),

('Kevin Durant', 'points', 32, '2024-11-17'),
('Kevin Durant', 'rebounds', 8, '2024-11-17'),
('Kevin Durant', 'steals', 2, '2024-11-17'),
('Kevin Durant', 'blocks', 1, '2024-11-17'),
('Kevin Durant', 'turnovers', 3, '2024-11-17'),

('Kevin Durant', 'points', 29, '2024-11-19'),
('Kevin Durant', 'rebounds', 6, '2024-11-19'),
('Kevin Durant', 'steals', 1, '2024-11-19'),
('Kevin Durant', 'blocks', 2, '2024-11-19'),
('Kevin Durant', 'turnovers', 2, '2024-11-19'),

-- Giannis Antetokounmpo
('Giannis Antetokounmpo', 'points', 33, '2024-11-10'),
('Giannis Antetokounmpo', 'rebounds', 11, '2024-11-10'),
('Giannis Antetokounmpo', 'steals', 3, '2024-11-10'),
('Giannis Antetokounmpo', 'blocks', 2, '2024-11-10'),
('Giannis Antetokounmpo', 'turnovers', 4, '2024-11-10'),

('Giannis Antetokounmpo', 'points', 31, '2024-11-12'),
('Giannis Antetokounmpo', 'rebounds', 12, '2024-11-12'),
('Giannis Antetokounmpo', 'steals', 4, '2024-11-12'),
('Giannis Antetokounmpo', 'blocks', 3, '2024-11-12'),
('Giannis Antetokounmpo', 'turnovers', 2, '2024-11-12'),

('Giannis Antetokounmpo', 'points', 27, '2024-11-14'),
('Giannis Antetokounmpo', 'rebounds', 9, '2024-11-14'),
('Giannis Antetokounmpo', 'steals', 2, '2024-11-14'),
('Giannis Antetokounmpo', 'blocks', 2, '2024-11-14'),
('Giannis Antetokounmpo', 'turnovers', 3, '2024-11-14'),

('Giannis Antetokounmpo', 'points', 29, '2024-11-16'),
('Giannis Antetokounmpo', 'rebounds', 10, '2024-11-16'),
('Giannis Antetokounmpo', 'steals', 3, '2024-11-16'),
('Giannis Antetokounmpo', 'blocks', 1, '2024-11-16'),
('Giannis Antetokounmpo', 'turnovers', 4, '2024-11-16'),

('Giannis Antetokounmpo', 'points', 35, '2024-11-18'),
('Giannis Antetokounmpo', 'rebounds', 12, '2024-11-18'),
('Giannis Antetokounmpo', 'steals', 4, '2024-11-18'),
('Giannis Antetokounmpo', 'blocks', 2, '2024-11-18'),
('Giannis Antetokounmpo', 'turnovers', 5, '2024-11-18'),

-- Luka Dončić
('Luka Dončić', 'points', 32, '2024-11-10'),
('Luka Dončić', 'rebounds', 8, '2024-11-10'),
('Luka Dončić', 'steals', 2, '2024-11-10'),
('Luka Dončić', 'blocks', 1, '2024-11-10'),
('Luka Dončić', 'turnovers', 4, '2024-11-10'),

('Luka Dončić', 'points', 28, '2024-11-12'),
('Luka Dončić', 'rebounds', 7, '2024-11-12'),
('Luka Dončić', 'steals', 3, '2024-11-12'),
('Luka Dončić', 'blocks', 2, '2024-11-12'),
('Luka Dončić', 'turnovers', 3, '2024-11-12'),

('Luka Dončić', 'points', 27, '2024-11-14'),
('Luka Dončić', 'rebounds', 9, '2024-11-14'),
('Luka Dončić', 'steals', 2, '2024-11-14'),
('Luka Dončić', 'blocks', 1, '2024-11-14'),
('Luka Dončić', 'turnovers', 5, '2024-11-14'),

('Luka Dončić', 'points', 30, '2024-11-16'),
('Luka Dončić', 'rebounds', 10, '2024-11-16'),
('Luka Dončić', 'steals', 1, '2024-11-16'),
('Luka Dončić', 'blocks', 2, '2024-11-16'),
('Luka Dončić', 'turnovers', 2, '2024-11-16'),

('Luka Dončić', 'points', 33, '2024-11-18'),
('Luka Dončić', 'rebounds', 12, '2024-11-18'),
('Luka Dončić', 'steals', 3, '2024-11-18'),
('Luka Dončić', 'blocks', 1, '2024-11-18'),
('Luka Dončić', 'turnovers', 4, '2024-11-18'),

-- Stephen Curry
('Stephen Curry', 'points', 35, '2024-11-10'),
('Stephen Curry', 'rebounds', 6, '2024-11-10'),
('Stephen Curry', 'steals', 4, '2024-11-10'),
('Stephen Curry', 'blocks', 1, '2024-11-10'),
('Stephen Curry', 'turnovers', 2, '2024-11-10'),

('Stephen Curry', 'points', 30, '2024-11-12'),
('Stephen Curry', 'rebounds', 7, '2024-11-12'),
('Stephen Curry', 'steals', 3, '2024-11-12'),
('Stephen Curry', 'blocks', 2, '2024-11-12'),
('Stephen Curry', 'turnovers', 1, '2024-11-12'),

('Stephen Curry', 'points', 28, '2024-11-14'),
('Stephen Curry', 'rebounds', 5, '2024-11-14'),
('Stephen Curry', 'steals', 2, '2024-11-14'),
('Stephen Curry', 'blocks', 1, '2024-11-14'),
('Stephen Curry', 'turnovers', 4, '2024-11-14'),

('Stephen Curry', 'points', 40, '2024-11-16'),
('Stephen Curry', 'rebounds', 8, '2024-11-16'),
('Stephen Curry', 'steals', 5, '2024-11-16'),
('Stephen Curry', 'blocks', 2, '2024-11-16'),
('Stephen Curry', 'turnovers', 3, '2024-11-16'),

('Stephen Curry', 'points', 36, '2024-11-18'),
('Stephen Curry', 'rebounds', 9, '2024-11-18'),
('Stephen Curry', 'steals', 3, '2024-11-18'),
('Stephen Curry', 'blocks', 1, '2024-11-18'),
('Stephen Curry', 'turnovers', 5, '2024-11-18'),

-- Nikola Jokić
('Nikola Jokić', 'points', 24, '2024-11-10'),
('Nikola Jokić', 'rebounds', 12, '2024-11-10'),
('Nikola Jokić', 'steals', 2, '2024-11-10'),
('Nikola Jokić', 'blocks', 1, '2024-11-10'),
('Nikola Jokić', 'turnovers', 3, '2024-11-10'),

('Nikola Jokić', 'points', 28, '2024-11-12'),
('Nikola Jokić', 'rebounds', 11, '2024-11-12'),
('Nikola Jokić', 'steals', 2, '2024-11-12'),
('Nikola Jokić', 'blocks', 1, '2024-11-12'),
('Nikola Jokić', 'turnovers', 4, '2024-11-12'),

('Nikola Jokić', 'points', 22, '2024-11-14'),
('Nikola Jokić', 'rebounds', 13, '2024-11-14'),
('Nikola Jokić', 'steals', 1, '2024-11-14'),
('Nikola Jokić', 'blocks', 2, '2024-11-14'),
('Nikola Jokić', 'turnovers', 5, '2024-11-14'),

('Nikola Jokić', 'points', 30, '2024-11-16'),
('Nikola Jokić', 'rebounds', 15, '2024-11-16'),
('Nikola Jokić', 'steals', 3, '2024-11-16'),
('Nikola Jokić', 'blocks', 2, '2024-11-16'),
('Nikola Jokić', 'turnovers', 3, '2024-11-16'),

('Nikola Jokić', 'points', 27, '2024-11-18'),
('Nikola Jokić', 'rebounds', 14, '2024-11-18'),
('Nikola Jokić', 'steals', 2, '2024-11-18'),
('Nikola Jokić', 'blocks', 1, '2024-11-18'),
('Nikola Jokić', 'turnovers', 4, '2024-11-18'),

-- Joel Embiid
('Joel Embiid', 'points', 34, '2024-11-10'),
('Joel Embiid', 'rebounds', 12, '2024-11-10'),
('Joel Embiid', 'steals', 3, '2024-11-10'),
('Joel Embiid', 'blocks', 2, '2024-11-10'),
('Joel Embiid', 'turnovers', 3, '2024-11-10'),

('Joel Embiid', 'points', 31, '2024-11-12'),
('Joel Embiid', 'rebounds', 10, '2024-11-12'),
('Joel Embiid', 'steals', 2, '2024-11-12'),
('Joel Embiid', 'blocks', 3, '2024-11-12'),
('Joel Embiid', 'turnovers', 2, '2024-11-12'),

('Joel Embiid', 'points', 28, '2024-11-14'),
('Joel Embiid', 'rebounds', 11, '2024-11-14'),
('Joel Embiid', 'steals', 1, '2024-11-14'),
('Joel Embiid', 'blocks', 2, '2024-11-14'),
('Joel Embiid', 'turnovers', 4, '2024-11-14'),

('Joel Embiid', 'points', 33, '2024-11-16'),
('Joel Embiid', 'rebounds', 13, '2024-11-16'),
('Joel Embiid', 'steals', 2, '2024-11-16'),
('Joel Embiid', 'blocks', 4, '2024-11-16'),
('Joel Embiid', 'turnovers', 3, '2024-11-16'),

('Joel Embiid', 'points', 36, '2024-11-18'),
('Joel Embiid', 'rebounds', 14, '2024-11-18'),
('Joel Embiid', 'steals', 2, '2024-11-18'),
('Joel Embiid', 'blocks', 5, '2024-11-18'),
('Joel Embiid', 'turnovers', 2, '2024-11-18'),

-- James Harden
('James Harden', 'points', 25, '2024-11-10'),
('James Harden', 'rebounds', 5, '2024-11-10'),
('James Harden', 'steals', 3, '2024-11-10'),
('James Harden', 'blocks', 1, '2024-11-10'),
('James Harden', 'turnovers', 4, '2024-11-10'),

('James Harden', 'points', 23, '2024-11-12'),
('James Harden', 'rebounds', 6, '2024-11-12'),
('James Harden', 'steals', 4, '2024-11-12'),
('James Harden', 'blocks', 2, '2024-11-12'),
('James Harden', 'turnovers', 5, '2024-11-12'),

('James Harden', 'points', 28, '2024-11-14'),
('James Harden', 'rebounds', 7, '2024-11-14'),
('James Harden', 'steals', 2, '2024-11-14'),
('James Harden', 'blocks', 3, '2024-11-14'),
('James Harden', 'turnovers', 6, '2024-11-14'),

('James Harden', 'points', 29, '2024-11-16'),
('James Harden', 'rebounds', 5, '2024-11-16'),
('James Harden', 'steals', 4, '2024-11-16'),
('James Harden', 'blocks', 2, '2024-11-16'),
('James Harden', 'turnovers', 3, '2024-11-16'),

('James Harden', 'points', 27, '2024-11-18'),
('James Harden', 'rebounds', 6, '2024-11-18'),
('James Harden', 'steals', 3, '2024-11-18'),
('James Harden', 'blocks', 1, '2024-11-18'),
('James Harden', 'turnovers', 4, '2024-11-18'),

-- Kawhi Leonard
('Kawhi Leonard', 'points', 26, '2024-11-10'),
('Kawhi Leonard', 'rebounds', 7, '2024-11-10'),
('Kawhi Leonard', 'steals', 2, '2024-11-10'),
('Kawhi Leonard', 'blocks', 1, '2024-11-10'),
('Kawhi Leonard', 'turnovers', 3, '2024-11-10'),

('Kawhi Leonard', 'points', 24, '2024-11-12'),
('Kawhi Leonard', 'rebounds', 6, '2024-11-12'),
('Kawhi Leonard', 'steals', 1, '2024-11-12'),
('Kawhi Leonard', 'blocks', 2, '2024-11-12'),
('Kawhi Leonard', 'turnovers', 4, '2024-11-12'),

('Kawhi Leonard', 'points', 27, '2024-11-14'),
('Kawhi Leonard', 'rebounds', 8, '2024-11-14'),
('Kawhi Leonard', 'steals', 3, '2024-11-14'),
('Kawhi Leonard', 'blocks', 1, '2024-11-14'),
('Kawhi Leonard', 'turnovers', 3, '2024-11-14'),

('Kawhi Leonard', 'points', 30, '2024-11-16'),
('Kawhi Leonard', 'rebounds', 9, '2024-11-16'),
('Kawhi Leonard', 'steals', 4, '2024-11-16'),
('Kawhi Leonard', 'blocks', 2, '2024-11-16'),
('Kawhi Leonard', 'turnovers', 5, '2024-11-16'),

('Kawhi Leonard', 'points', 28, '2024-11-18'),
('Kawhi Leonard', 'rebounds', 7, '2024-11-18'),
('Kawhi Leonard', 'steals', 3, '2024-11-18'),
('Kawhi Leonard', 'blocks', 2, '2024-11-18'),
('Kawhi Leonard', 'turnovers', 3, '2024-11-18'),

-- Jayson Tatum
('Jayson Tatum', 'points', 32, '2024-11-18'),
('Jayson Tatum', 'rebounds', 8, '2024-11-18'),
('Jayson Tatum', 'steals', 2, '2024-11-18'),
('Jayson Tatum', 'blocks', 1, '2024-11-18'),
('Jayson Tatum', 'turnovers', 3, '2024-11-18'),

('Jayson Tatum', 'points', 29, '2024-11-16'),
('Jayson Tatum', 'rebounds', 10, '2024-11-16'),
('Jayson Tatum', 'steals', 1, '2024-11-16'),
('Jayson Tatum', 'blocks', 2, '2024-11-16'),
('Jayson Tatum', 'turnovers', 2, '2024-11-16'),

('Jayson Tatum', 'points', 27, '2024-11-14'),
('Jayson Tatum', 'rebounds', 7, '2024-11-14'),
('Jayson Tatum', 'steals', 3, '2024-11-14'),
('Jayson Tatum', 'blocks', 1, '2024-11-14'),
('Jayson Tatum', 'turnovers', 4, '2024-11-14'),

('Jayson Tatum', 'points', 33, '2024-11-12'),
('Jayson Tatum', 'rebounds', 9, '2024-11-12'),
('Jayson Tatum', 'steals', 2, '2024-11-12'),
('Jayson Tatum', 'blocks', 3, '2024-11-12'),
('Jayson Tatum', 'turnovers', 3, '2024-11-12'),

('Jayson Tatum', 'points', 30, '2024-11-10'),
('Jayson Tatum', 'rebounds', 6, '2024-11-10'),
('Jayson Tatum', 'steals', 1, '2024-11-10'),
('Jayson Tatum', 'blocks', 0, '2024-11-10'),
('Jayson Tatum', 'turnovers', 2, '2024-11-10'),

-- Jimmy Butler
('Jimmy Butler', 'points', 25, '2024-11-18'),
('Jimmy Butler', 'rebounds', 6, '2024-11-18'),
('Jimmy Butler', 'steals', 2, '2024-11-18'),
('Jimmy Butler', 'blocks', 1, '2024-11-18'),
('Jimmy Butler', 'turnovers', 4, '2024-11-18'),

('Jimmy Butler', 'points', 29, '2024-11-16'),
('Jimmy Butler', 'rebounds', 7, '2024-11-16'),
('Jimmy Butler', 'steals', 1, '2024-11-16'),
('Jimmy Butler', 'blocks', 2, '2024-11-16'),
('Jimmy Butler', 'turnovers', 2, '2024-11-16'),

('Jimmy Butler', 'points', 26, '2024-11-14'),
('Jimmy Butler', 'rebounds', 5, '2024-11-14'),
('Jimmy Butler', 'steals', 3, '2024-11-14'),
('Jimmy Butler', 'blocks', 2, '2024-11-14'),
('Jimmy Butler', 'turnovers', 3, '2024-11-14'),

('Jimmy Butler', 'points', 23, '2024-11-12'),
('Jimmy Butler', 'rebounds', 4, '2024-11-12'),
('Jimmy Butler', 'steals', 2, '2024-11-12'),
('Jimmy Butler', 'blocks', 1, '2024-11-12'),
('Jimmy Butler', 'turnovers', 4, '2024-11-12'),

('Jimmy Butler', 'points', 27, '2024-11-10'),
('Jimmy Butler', 'rebounds', 8, '2024-11-10'),
('Jimmy Butler', 'steals', 2, '2024-11-10'),
('Jimmy Butler', 'blocks', 1, '2024-11-10'),
('Jimmy Butler', 'turnovers', 5, '2024-11-10'),

-- Anthony Davis
('Anthony Davis', 'points', 30, '2024-11-18'),
('Anthony Davis', 'rebounds', 10, '2024-11-18'),
('Anthony Davis', 'steals', 1, '2024-11-18'),
('Anthony Davis', 'blocks', 3, '2024-11-18'),
('Anthony Davis', 'turnovers', 2, '2024-11-18'),

('Anthony Davis', 'points', 34, '2024-11-16'),
('Anthony Davis', 'rebounds', 12, '2024-11-16'),
('Anthony Davis', 'steals', 2, '2024-11-16'),
('Anthony Davis', 'blocks', 2, '2024-11-16'),
('Anthony Davis', 'turnovers', 1, '2024-11-16'),

('Anthony Davis', 'points', 27, '2024-11-14'),
('Anthony Davis', 'rebounds', 11, '2024-11-14'),
('Anthony Davis', 'steals', 3, '2024-11-14'),
('Anthony Davis', 'blocks', 4, '2024-11-14'),
('Anthony Davis', 'turnovers', 3, '2024-11-14'),

('Anthony Davis', 'points', 29, '2024-11-12'),
('Anthony Davis', 'rebounds', 9, '2024-11-12'),
('Anthony Davis', 'steals', 1, '2024-11-12'),
('Anthony Davis', 'blocks', 5, '2024-11-12'),
('Anthony Davis', 'turnovers', 4, '2024-11-12'),

('Anthony Davis', 'points', 31, '2024-11-10'),
('Anthony Davis', 'rebounds', 13, '2024-11-10'),
('Anthony Davis', 'steals', 2, '2024-11-10'),
('Anthony Davis', 'blocks', 3, '2024-11-10'),
('Anthony Davis', 'turnovers', 2, '2024-11-10');




