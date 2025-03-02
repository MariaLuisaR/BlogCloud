import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";

const API_URL = "http://34.28.37.200:8000";

const CreatePost = () => {
  const [title, setTitle] = useState("");
  const [content, setContent] = useState("");
  const [tags, setTags] = useState("");
  const [date, setDate] = useState("");
  const [token, setToken] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    const savedToken = localStorage.getItem("token");
    if (savedToken) {
      setToken(savedToken);
    }
  }, []);

  const handleCreatePost = async () => {
    if (!token) {
      alert("Debes iniciar sesión para crear un post.");
      return;
    }

    try {
      await axios.post(
        `${API_URL}/posts/`, 
        { title, content, tags: tags.split(",").map(tag => tag.trim()), date: Date()}, 
        { headers: { Authorization: `Bearer ${token}` } }
      );
      alert("Post creado exitosamente. Redirigiendo al Dashboard...");
      navigate("/dashboard");
    } catch (error) {
      console.error("Error al crear post:", error);
      alert("Error al crear el post. Verifica que todos los campos sean correctos.");
    }
  };

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-2xl font-bold mb-4">Crear Nuevo Post</h1>

      {!token ? (
        <div className="text-red-500">
          <p>Debes iniciar sesión para crear un post.</p>
          <button onClick={() => navigate("/login")} className="bg-blue-500 text-white px-4 py-2 rounded mt-2">
            Ir a Iniciar Sesión
          </button>
        </div>
      ) : (
        <>
          <input
            type="text"
            placeholder="Título"
            className="border p-2 w-full mb-2"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
          />
          <textarea
            placeholder="Contenido"
            className="border p-2 w-full mb-2"
            value={content}
            onChange={(e) => setContent(e.target.value)}
          />
          <input
            type="text"
            placeholder="Etiquetas (separadas por comas)"
            className="border p-2 w-full mb-2"
            value={tags}
            onChange={(e) => setTags(e.target.value)}
          />
          <button onClick={handleCreatePost} className="bg-blue-500 text-white px-4 py-2 rounded">
            Publicar
          </button>
        </>
      )}
    </div>
  );
};

export default CreatePost;
