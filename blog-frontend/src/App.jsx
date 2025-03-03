import React, { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";
import { BrowserRouter as Router, Route, Routes, Link, useNavigate } from "react-router-dom";
import Dashboard from "./pages/Dashboard";
import PostDetail from "./pages/PostDetail";
import CreatePost from "./pages/CreatePost";
import { setAuthToken } from "./api";  // Importa la función setAuthToken

const API_URL = "http://34.28.37.200:8000";

function App() {
    const [token, setToken] = useState(localStorage.getItem("token") || null);
    const [user, setUser] = useState(null);
    const [tags, setTags] = useState([]);
    const navigate = useNavigate();
    console.log("Token:", token); 

    useEffect(() => {
	console.log("Checkpoint1");
        const fetchUser = async () => {
	    console.log("Checkpoint2");
            if (token) {
                try {
                    console.log("Checkpoint3");
                    const response = await axios.get(`${API_URL}/users/me`, {
                        headers: { Authorization: `Bearer ${token}` },
                    });
                    console.log("Usuario actual:", response.data);
                    setUser(response.data);
                } catch (error) {
                    console.error("Error cargando usuario:", error);
                    // Si hay un error, elimina el token inválido
                    localStorage.removeItem("token");
                    setToken(null);
                }
            }
        };

        const fetchTags = async () => {
            try {
                const response = await axios.get(`${API_URL}/tags`);
                setTags(response.data);
            } catch (error) {
                console.error("Error cargando tags:", error);
            }
        };

        fetchUser();
        fetchTags();
    }, [token]);

    const login = async (email, password) => {
        try {
            const response = await axios.post(`${API_URL}/users/login`, {
                username: email,
                password,
            });

            // Guarda el token en localStorage y actualiza el estado
            localStorage.setItem("token", response.data.access_token);
            setToken(response.data.access_token);

            // Configura el token en las cabeceras de axios
            setAuthToken(response.data.access_token);

            // Obtén la información del usuario después de iniciar sesión
            const userResponse = await axios.get(`${API_URL}/users/me`, {
                headers: { Authorization: `Bearer ${response.data.access_token}` },
            });
            console.log("Usuario despues de login:", userResponse.data)
            setUser(userResponse.data);  // Actualiza el estado del usuario
        } catch (error) {
            console.error("Error iniciando sesión:", error);
        }
    };

    const logout = () => {
        // Elimina el token de localStorage y actualiza el estado
        localStorage.removeItem("token");
        setToken(null);
        setUser(null);

        // Elimina el token de las cabeceras de axios
        setAuthToken(null);

        // Redirige al usuario a la página principal
        navigate("/");
    };

    return (
        <Router>
            <div className="app-container">
                <nav className="navbar">
                    <h1 className="title">
                        <Link to="/">Blog en la Nube</Link>
                    </h1>
                    {user ? (
                        <div className="user-info">
                            <span>{user.name}</span>
                            <button onClick={logout}>Cerrar Sesión</button>
                        </div>
                    ) : (
                        <button onClick={() => login("user@example.com", "password")}>Iniciar Sesión</button>
                    )}
                </nav>
                <Routes>
                    <Route path="/" element={<Dashboard tags={tags} user={user} onLogout={logout} />} />
                    <Route path="/posts/:id" element={<PostDetail />} />
                    <Route path="/create" element={<CreatePost />} />
                </Routes>
            </div>
        </Router>
    );
}

export default App;
