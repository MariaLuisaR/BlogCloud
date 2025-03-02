import { useEffect, useState } from "react";
import { useParams, Link } from "react-router-dom";
import axios from "axios";

const PostDetail = () => {
  const { id } = useParams();
  const [post, setPost] = useState(null);

  useEffect(() => {
    axios.get(`http://34.28.37.200:8000/posts/${id}`)
      .then(response => setPost(response.data))
      .catch(error => console.error("Error al obtener post:", error));
  }, [id]);

  if (!post) {
    return <div className="text-center text-red-500">Post no encontrado</div>;
  }

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-3xl font-bold">{post.title}</h1>
      <p className="text-gray-600">Por: {post.author}</p>
      <p className="text-gray-600">Fecha: {post.date}</p>
      <p className="text-lg mt-4">{post.content}</p>
      <p className="text-yellow-500 text-lg mt-2">⭐ {post.rating?.toFixed(1) || "Sin calificación"}</p>
      <Link to="/dashboard" className="bg-gray-500 text-white px-4 py-2 rounded mt-4">Volver al Dashboard</Link>
    </div>
  );
};

export default PostDetail;
