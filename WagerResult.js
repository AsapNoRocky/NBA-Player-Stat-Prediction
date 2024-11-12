import React from "react";

function WagerResult({ result }) {
  if (!result) return null;
  return (
    <div>
      <h3>{result.isGoodWager ? "GOOD WAGER" : "BAD WAGER"}</h3>
    </div>
  );
}

export default WagerResult;
