import React, { useState } from "react";
import PlayerSelect from "./components/PlayerSelect";
import StatWagerInput from "./components/StatWagerInput";
import WagerResult from "./components/WagerResult";
import { getPlayerPrediction } from "./api";

function App() {
  const [selectedPlayer, setSelectedPlayer] = useState(null);
  const [wagerResult, setWagerResult] = useState(null);

  const handleSelectPlayer = (playerId) => {
    setSelectedPlayer(playerId);
    setWagerResult(null);
  };

  const handleCheckWager = async (stat, threshold) => {
    if (!selectedPlayer) return;
    const result = await getPlayerPrediction(selectedPlayer, stat, threshold);
    setWagerResult(result);
  };

  return (
    <div>
      <h1>NBA Betting App</h1>
      <PlayerSelect onSelectPlayer={handleSelectPlayer} />
      <StatWagerInput onCheckWager={handleCheckWager} />
      <WagerResult result={wagerResult} />
    </div>
  );
}

export default App;
