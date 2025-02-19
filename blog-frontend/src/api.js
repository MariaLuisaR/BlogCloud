import axios from "axios";

const API_URL = "http://34.28.37.200:8000";

export const api = axios.create({
  baseURL: API_URL,
  headers: { "Content-Type": "application/json" },
});
