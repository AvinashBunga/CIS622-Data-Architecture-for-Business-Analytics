
CREATE TABLE PlayerStats (
  PlayerStatsID SERIAL PRIMARY KEY,
  PlayerID INT NOT NULL,
  TotalRuns INT DEFAULT 0,
  HighestScore INT DEFAULT 0,
  TotalWickets INT DEFAULT 0,
  FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);
