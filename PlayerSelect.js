import React, { useEffect, useState } from "react";
import { getPlayers } from "../api";

function PlayerSelect({ onSelectPlayer }) {
  const [players, setPlayers] = useState([]);

  useEffect(() => {
    const fetchPlayers = async () => {
      const playersData = await getPlayers();
      setPlayers(playersData);
    };
    fetchPlayers();
  }, []);

  return (
    <div>
      <label>Select Player: </label>
      <select onChange={(e) => onSelectPlayer(e.target.value)}>
        <option value="">--Select a Player--</option>
        {players.map((player) => (
          <option key={player.id} value={player.id}>
            {player.name}
          </option>
        ))}
      </select>
    </div>
  );
}

export default PlayerSelect;
