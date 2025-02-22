import React, { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";

const API_URL = "http://34.28.37.200:8000";

function App() {
  const [posts, setPosts] = useState([]);
  const [user, setUser] = useState(null);
  const [token, setToken] = useState(null);

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

  const register = async (email, password, name) => {
    try {
      const response = await axios.post(`${API_URL}/register/`, { 
	email: email, 
	password: password, 
	name:name,
      });
      setUser(response.data);
    } catch (error) {
      console.error("Error registrando usuario:", error);
    }
  };

  const login = async (email, password) => {
    try {
      const response = await axios.post(`${API_URL}/token/`, { username: email, password: password, });
      setToken(response.data.access_token);
      setUser(response.data.user);
    } catch (error) {
      console.error("Error iniciando sesión:", error);
    }
  };

  const createPost = async (title, content) => {
    try {
      const response = await axios.post(`${API_URL}/posts/`, { 
	title: title, 
	content: content,
	author_id: user.id, 
      }, {
        headers: { Authorization: `Bearer ${token}` },
      });
      setPosts([...posts, response.data]);
    } catch (error) {
      console.error("Error creando post:", error);
    }
  };

  const updatePost = async (postId, title, content) => {
    try {
      const response = await axios.put(`${API_URL}/posts/${postId}`, { title, content }, {
        headers: { Authorization: `Bearer ${token}` },
      });
      setPosts(posts.map(post => post.id === postId ? response.data : post));
    } catch (error) {
      console.error("Error actualizando post:", error);
    }
  };

  const deletePost = async (postId) => {
    try {
      await axios.delete(`${API_URL}/posts/${postId}`, {
        headers: { Authorization: `Bearer ${token}` },
      });
      setPosts(posts.filter(post => post.id !== postId));
    } catch (error) {
      console.error("Error eliminando post:", error);
    }
  };

  return (
    <div className="app-container">
      <h1 className="title">Blog en la Nube</h1>
      {!user ? (
        <div>
          <button onClick={() => register("user@example.com", "password", "User Name")}>Registrarse</button>
          <button onClick={() => login("user@example.com", "password")}>Iniciar Sesión</button>
        </div>
      ) : (
        <div>
          <button onClick={() => createPost("Nuevo Post", "Contenido del post")}>Crear Post</button>
        </div>
      )}
      <div className="post-grid">
        {posts.map((post) => (
          <div key={post.id} className="post-card">
            <h2>{post.title}</h2>
            <p>{post.content}</p>
            <span className="author">Autor: {post.author_id}</span>
            {user && user.id === post.author_id && (
              <div>
                <button onClick={() => updatePost(post.id, "Título Actualizado", "Contenido Actualizado")}>Editar</button>
                <button onClick={() => deletePost(post.id)}>Eliminar</button>
              </div>
            )}
          </div>
        ))}
      </div>
    </div>
  );
}

export default App;
