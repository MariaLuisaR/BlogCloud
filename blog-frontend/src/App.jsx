import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import { useEffect, useState } from "react";
import { api } from "./api";

function App() {
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    api.get("/posts/")
      .then((response) => setPosts(response.data))
      .catch((error) => console.error("Error cargando posts:", error));
  }, []);

  return (
    <div>
      <h1>Blog en la Nube 🚀</h1>
      <ul>
        {posts.map((post) => (
          <li key={post.id}>
            <h2>{post.title}</h2>
            <p>{post.content}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;

