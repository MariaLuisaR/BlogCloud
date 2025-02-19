import React, { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";

const API_URL = "http://34.28.37.200:8000/posts/"; // Asegúrate de cambiar esto si es necesario

function App() {
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    axios.get(API_URL)
      .then((response) => {
        setPosts(response.data);
      })
      .catch((error) => {
        console.error("Error cargando posts:", error);
      });
  }, []);

  return (
    <div className="app-container">
      <h1 className="title">Blog en la Nube</h1>
      <div className="post-grid">
        {posts.map((post) => (
          <div key={post.id} className="post-card">
            <h2>{post.title}</h2>
            <p>{post.content}</p>
            <span className="author">Autor: {post.author_id}</span>
          </div>
        ))}
      </div>
    </div>
  );
}

export default App;

