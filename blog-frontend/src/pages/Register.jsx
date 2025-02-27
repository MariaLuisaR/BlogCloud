import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import { api } from "../api";

const Register = () => {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  const handleRegister = async (e) => {
   e.preventDefault();
   try {
     await api.post("/users/register", { name, email, password });
     alert("Registro exitoso. Redirigiendo al login...");
     navigate("/login");
   } catch (error) {
     console.error("Error en registro:", error);
     alert("Error al registrarse. Intenta con otro email.");
   }
 };

  return (
    <div>
      <h2>Registro</h2>
      <form onSubmit={handleRegister}>
        <input type="text" placeholder="Nombre" value={name} onChange={(e) => setName(e.target.value)} required />
        <input type="email" placeholder="Email" value={email} onChange={(e) => setEmail(e.target.value)} required />
        <input type="password" placeholder="Contraseña" value={password} onChange={(e) => setPassword(e.target.value)} required />
        <button type="submit">Registrarse</button>
      </form>
    </div>
  );
};

export default Register;
