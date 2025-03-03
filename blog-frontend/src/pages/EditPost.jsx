import { useEffect, useState } from "react";
import { useParams, useNavigate } from "react-router-dom";
import axios from "axios";

const API_URL = "http://34.28.37.200:8000";

const EditPost = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const token = localStorage.getItem("token");
  const [post, setPost] = useState({ title: "", content: "", tags: [] });

  useEffect(() => {
    axios.get(`${API_URL}/posts/${id}`)
      .then(response => setPost(response.data))
      .catch(error => console.error("Error al obtener el post:", error));
  }, [id]);

  const handleUpdate = async () => {
    try {
      await axios.put(`${API_URL}/posts/${id}`, post, {
        headers: { Authorization: `Bearer ${token}` },
      });
      alert("Post actualizado!");
      navigate("/dashboard"); // 🔹 Redirigir después de actualizar
    } catch (error) {
      console.error("Error al actualizar post:", error);
    }
  };

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-2xl font-bold">Editar Post</h1>
      <input
        type="text"
        value={post.title}
        onChange={(e) => setPost({ ...post, title: e.target.value })}
        className="border p-2 w-full"
      />
      <textarea
        value={post.content}
        onChange={(e) => setPost({ ...post, content: e.target.value })}
        className="border p-2 w-full mt-2"
      />
      <button onClick={handleUpdate} className="bg-green-500 text-white px-4 py-2 rounded mt-2">
        Guardar cambios
      </button>
    </div>
  );
};

export default EditPost;
