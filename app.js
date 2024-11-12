import axios from "axios";

const API_BASE_URL = "http://127.0.0.1:5000";

export const getPlayers = async () => {
  const response = await axios.get(`${API_BASE_URL}/players`);
  return response.data;
};

export const getPlayerPrediction = async (playerId, stat, threshold) => {
  const response = await axios.get(`${API_BASE_URL}/player/${playerId}/predict`, {
    params: { stat, threshold },
  });
  return response.data;
};
