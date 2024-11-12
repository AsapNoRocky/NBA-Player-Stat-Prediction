import React, { useState } from "react";

function StatWagerInput({ onCheckWager }) {
  const [stat, setStat] = useState("");
  const [threshold, setThreshold] = useState("");

  const handleCheckWager = () => {
    if (stat && threshold) {
      onCheckWager(stat, threshold);
    }
  };

  return (
    <div>
      <label>Select Stat: </label>
      <select value={stat} onChange={(e) => setStat(e.target.value)}>
        <option value="">--Select a Stat--</option>
        <option value="points">Points</option>
        <option value="assists">Assists</option>
        <option value="rebounds">Rebounds</option>
      </select>

      <label>Threshold: </label>
      <input type="number" value={threshold} onChange={(e) => setThreshold(e.target.value)} />

      <button onClick={handleCheckWager}>Check Wager</button>
    </div>
  );
}

export default StatWagerInput;
