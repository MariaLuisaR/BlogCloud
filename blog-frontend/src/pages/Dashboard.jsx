import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";

const API_URL = "http://34.28.37.200:8000";

const Dashboard = () => {
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    axios.get(`${API_URL}/posts/`)
      .then(response => setPosts(response.data))
      .catch(error => console.error("Error al obtener posts:", error));
  }, []);

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-2xl font-bold mb-4">Blog</h1>

      <div className="mb-4">
        <Link to="/create" className="bg-blue-500 text-white px-4 py-2 rounded">
          Crear Post
        </Link>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {posts.map(post => (
          <div key={post.id} className="border p-4 rounded-lg shadow-md">
            <h2 className="text-xl font-bold">{post.title}</h2>
            <p className="text-gray-600">Por {post.author}</p>
            <p className="text-sm">{post.content.slice(0, 100)}...</p>
            <p className="text-yellow-500">⭐ {post.rating?.toFixed(1) || "Sin calificación"}</p>
            <Link to={`/posts/${post.id}`} className="text-blue-500">Ver más</Link>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Dashboard;
