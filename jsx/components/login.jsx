import React from 'react';
import '../login.css'; 

class Login extends React.Component {
  render() {
    const sectionStyle = {
      backgroundImage: 'linear-gradient(rgba(0, 0, 0, 0.314), rgba(0, 0, 0, 0.314)), url(img/Bc.jpg)',
    };

    return (
      <div className="login-container">
        <section style={sectionStyle} className="back">
          <div className="containerFrom">
            <form action="validar.php" method="post">
              <h1>Ingreso</h1>

              <div className="inputs">
                <input type="text" placeholder="Ingrese su nombre" name="Correo" autoFocus />
                <i className="fa-regular fa-envelope"></i>
              </div>

              <div className="inputs">
                <input type="password" placeholder="Ingrese su contraseña" name="Clave" />
                <i className="fa-solid fa-lock"></i>
              </div>

              <p><a href="#">¿No tienes una cuenta?</a></p>

              <input type="submit" value="Ingresar" className="boton" />

            </form>
          </div>
        </section>
      </div>
    );
  }
}

export default Login;
