import React, { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";
import { BrowserRouter as Router, Route, Routes, Link } from "react-router-dom";
import Dashboard from "./pages/Dashboard";
import PostDetail from "./pages/PostDetail";
import CreatePost from "./pages/CreatePost";

const API_URL = "http://34.28.37.200:8000";

function App() {
  const [posts, setPosts] = useState([]);
  const [token, setToken] = useState(localStorage.getItem("token") || null);

  useEffect(() => {
    fetchPosts();
  }, []);

  const fetchPosts = async () => {
    try {
      const response = await axios.get(`${API_URL}/posts/`);
      setPosts(response.data);
    } catch (error) {
      console.error("Error cargando posts:", error);
    }
  };

  const login = async (email, password) => {
    try {
      const response = await axios.post(`${API_URL}/users/login/`, {
        username: email,
        password,
      });
      localStorage.setItem("token", response.data.access_token);
      setToken(response.data.access_token);
    } catch (error) {
      console.error("Error iniciando sesión:", error);
    }
  };

  return (
    <Router>
      <div className="app-container">
        <nav className="navbar">
          <h1 className="title">
            <Link to="/">Blog en la Nube</Link>
          </h1>
          {!token ? (
            <button onClick={() => login("user@example.com", "password")}>Iniciar Sesión</button>
          ) : (
            <Link to="/create" className="bg-blue-500 text-white px-4 py-2 rounded">
              Crear Post
            </Link>
          )}
        </nav>

        <Routes>
          <Route path="/" element={<Dashboard posts={posts} />} />
          <Route path="/posts/:id" element={<PostDetail />} />
          <Route path="/create" element={<CreatePost />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
