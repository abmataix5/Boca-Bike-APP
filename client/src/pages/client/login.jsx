import React, { useEffect, useState } from "react";
import { useNavigate} from "react-router-dom";
import { useUser } from "../../hooks/useUser" 


export default function Login() {

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState(""); 

  let history = useNavigate(); 
  const { login, isLogged } = useUser(); 

  useEffect(() => {
  
    if (isLogged) {

       history("/"); 
  
    }
  }, [isLogged]);

  const handleSubmit = (e) => { 
 
    e.preventDefault();

    login(email, password);

   }; 

    return (
       
<div className="container ">
     
      <form className="form-signin mt-5" onSubmit={handleSubmit}>
     
        <img className="mb-4"       src="./logo.png" alt="" width="150" height="150"/>
        <h1 className="h3 mb-3 font-weight-normal">Inicia sesión en BocaBike</h1>

        <div className="form-group mx-sm-5 mb-5 col-xs-4">

          <label htmlFor="inputEmail" className="sr-only mt-4 ">Email</label>
          <input type="email" id="inputEmail" className="form-control mt-4" placeholder="Email" required autoFocus    onChange={(e) => setEmail(e.target.value)} value={email}/>

          <label htmlFor="inputPassword" className="sr-only">Contraseña</label>
          <input type="password" id="inputPassword" className="form-control mt-4" placeholder="Contraseña"    onChange={(e) => setPassword(e.target.value)} required value={password}/>

        </div>

        <button className="btn btn-lg btn-primary btn-block" type="submit">INICIAR SESIÓN</button>

        <p className="mt-5 mb-3 text-muted">&copy; 2022-2022</p>
      </form>
  
     
      </div>    
            
        
    );
  }