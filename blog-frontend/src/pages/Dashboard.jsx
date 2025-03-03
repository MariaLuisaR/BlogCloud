import { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";

const API_URL = "http://34.28.37.200:8000";

const Dashboard = () => {
  const [posts, setPosts] = useState([]);
  const [tags, setTags] = useState([]);
  const [selectedTag, setSelectedTag] = useState("");
  const [user, setUser] = useState(null);
  const navigate = useNavigate();
  const token = localStorage.getItem("token");

  useEffect(() => {
    if (token) {
      axios
        .get(`${API_URL}/users/me`, { headers: { Authorization: `Bearer ${token}` } })
        .then((response) => setUser(response.data))
        .catch((error) => {
          console.error("Error al obtener usuario:", error);
          localStorage.removeItem("token");
          setUser(null);
        });
    }
    fetchPosts();
    fetchTags();
  }, [token]);

  const fetchPosts = async () => {
    try {
      const response = await axios.get(`${API_URL}/posts/`);
      setPosts(response.data);
    } catch (error) {
      console.error("Error al obtener posts:", error);
    }
  };

  const fetchTags = async () => {
    try {
      const response = await axios.get(`${API_URL}/tags/`);
      setTags(response.data);
    } catch (error) {
      console.error("Error al obtener tags:", error);
    }
  };

  const handleFilter = async (tag) => {
    setSelectedTag(tag);
    try {
      const response = tag
        ? await axios.get(`${API_URL}/posts/?tag=${tag}`)
        : await axios.get(`${API_URL}/posts/`);
      setPosts(response.data);
    } catch (error) {
      console.error("Error al filtrar posts:", error);
    }
  };

  const handleLogout = () => {
    localStorage.removeItem("token");
    setUser(null);
    navigate("/");
  };

  return (
    <div className="container mx-auto p-4">
      {/* Navbar */}
      <div className="flex justify-between items-center mb-4">
        <div>
          <select onChange={(e) => handleFilter(e.target.value)} value={selectedTag} className="border p-2">
            <option value="">Filtrar por Tag</option>
            {tags.map(tag => (
              <option key={tag.id} value={tag.name}>{tag.name}</option>
            ))}
          </select>
          <button onClick={() => handleFilter("")} className="ml-2 bg-red-500 text-white px-4 py-2 rounded">Reset</button>
        </div>
        <h1 className="text-2xl font-bold">Blog</h1>
        <div className="flex items-center gap-2">
          {user ? (
            <>
              <span className="font-semibold">{user.name}</span>
              <button onClick={handleLogout} className="bg-red-500 text-white px-4 py-2 rounded">Cerrar Sesión</button>
            </>
          ) : (
            <Link to="/login" className="bg-blue-500 text-white px-4 py-2 rounded">Iniciar Sesión</Link>
          )}
        </div>
      </div>

      {/* Botón de Crear Post */}
      {user && (
        <div className="mb-4">
          <Link to="/create" className="bg-blue-500 text-white px-4 py-2 rounded">Crear Post</Link>
        </div>
      )}

      {/* Lista de Posts */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        {posts.map(post => (
          <div key={post.id} className="border p-4 rounded-lg shadow-md">
            <h2 className="text-xl font-bold">{post.title}</h2>
            <p className="text-gray-600">Por {post.author}</p>
            <p className="text-sm">{post.content.slice(0, 100)}...</p>
            <p className="text-yellow-500">⭐ {post.rating?.toFixed(1) || "Sin calificación"}</p>
            <p className="text-sm text-blue-500">Tags: {post.tags.join(", ")}</p>
            <Link to={`/posts/${post.id}`} className="text-blue-500">Ver más</Link>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Dashboard;
