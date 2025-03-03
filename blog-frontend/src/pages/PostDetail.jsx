import { useEffect, useState } from "react";
import { useParams, Link, useNavigate } from "react-router-dom";
import axios from "axios";

const API_URL = "http://34.28.37.200:8000";

const PostDetail = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  
  const [post, setPost] = useState(null);
  const [rating, setRating] = useState(0);
  const [user, setUser] = useState(() => {
    const storedUser = localStorage.getItem("user");
    return storedUser ? JSON.parse(storedUser) : null;
  });

  const token = localStorage.getItem("token");

  // ✅ Cargar el post al montar el componente
  useEffect(() => {
    axios.get(`${API_URL}/posts/${id}`)
      .then(response => {
        console.log("📌 Datos del post recibido:", response.data);
        setPost(response.data);
      })
      .catch(error => console.error("❌ Error al obtener post:", error));
  }, [id]);

  // ✅ Verificar si `user` se está cargando correctamente
  useEffect(() => {
    console.log("✅ Usuario cargado:", user);
  }, [user]);

  // ✅ Calificar el post
  const handleRatePost = async () => {
    if (!rating) return alert("Por favor selecciona una calificación.");

    try {
      await axios.post(
        `${API_URL}/posts/${id}/rate`,
        { rating },
        { headers: { Authorization: `Bearer ${token}` } }
      );
      alert("Calificación enviada!");
      window.location.reload();
    } catch (error) {
      console.error("❌ Error al calificar post:", error);
    }
  };

  // ✅ Eliminar post
  const handleDeletePost = async () => {
    try {
      await axios.delete(`${API_URL}/posts/${id}`, {
        headers: { Authorization: `Bearer ${token}` }
      });
      alert("Post eliminado!");
      navigate("/dashboard");
    } catch (error) {
      console.error("❌ Error al eliminar post:", error);
    }
  };

  // ✅ Manejar edición del post
  const handleEditPost = () => {
    navigate(`/edit/${id}`);
  };

  // 📌 **Si el post aún no carga, mostrar mensaje**
  if (!post) {
    return <div className="text-center text-red-500">Post no encontrado</div>;
  }

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-3xl font-bold">{post.title}</h1>
      <p className="text-gray-600">Por {post.author}</p>
      <p className="text-gray-400">
        Publicado el: {new Date(post.created_at).toLocaleDateString()}
      </p>
      <p className="text-lg mt-4">{post.content}</p>
      <p className="text-yellow-500 text-lg mt-2">
        ⭐ {post.rating?.toFixed(1) || "Sin calificación"}
      </p>

      {/* ✅ Si el usuario NO es el autor, mostrar opción para calificar */}
      {user && user.id !== post.author_id && (
        <div className="mt-4">
          <label>Calificar este post:</label>
          <input 
            type="number" 
            min="1" 
            max="5" 
            value={rating} 
            onChange={(e) => setRating(e.target.value)} 
            className="border p-1 ml-2"
          />
          <button 
            onClick={handleRatePost} 
            className="bg-green-500 text-white px-4 py-2 rounded ml-2">
            Calificar
          </button>
        </div>
      )}

      {/* ✅ Si el usuario es el autor, mostrar botones de editar/eliminar */}
      {user && user.id === post.author_id && (
        <div className="mt-4">
          <button 
            onClick={handleEditPost} 
            className="bg-blue-500 text-white px-4 py-2 rounded">
            Editar
          </button>
          <button 
            onClick={handleDeletePost} 
            className="bg-red-500 text-white px-4 py-2 rounded ml-2">
            Eliminar
          </button>
        </div>
      )}

      <Link to="/dashboard" className="bg-gray-500 text-white px-4 py-2 rounded mt-4">
        Volver al Dashboard
      </Link>
    </div>
  );
};

export default PostDetail;
