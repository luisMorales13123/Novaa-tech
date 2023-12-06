import React from 'react';
import '../register.css';

class register extends React.Component{


    render(){
      
        return(
          
          
            <div>
                 <section>
        <form method="post" action="register.php" className="formulario" id="formulario">
          <h1>Registrate</h1>
          <div className="Nombres">
            <div className="inContainer">
              <input type="text" placeholder="Primer nombre" autoFocus name="pnombre" id="nombre1" />
              <i className="fa-regular fa-face-smile"></i>
            </div>

            <div className="inContainer">
              <input type="text" placeholder="Segundo nombre" name="snombre" id="nombre2" />
              <i className="fa-regular fa-face-smile SNI"></i>
            </div>
          </div>

          <div className="Apellidos">
            <div className="inContainer">
              <input type="text" placeholder="Primer apellido" name="apellido" id="Apellido1" />
              <i className="fa-regular fa-face-smile"></i>
            </div>

            <div className="inContainer">
              <input type="text" placeholder="Segundo apellido" name="sapellido" id="Apellido2" />
              <i className="fa-regular fa-face-smile SNI"></i>
            </div>
          </div>

          <div className="Documento">
            <div className="inContainer">
              <input type="text" placeholder="Número de documento" name="documento" id="documento" />
              <i className="fa-regular fa-id-card"></i>
            </div>

            <div className="inContainer">
              <select name="Tipodoc" id="tipoDocumento">
                <option value="">Tipo de documento</option>
                <option value="1">Cédula</option>
                <option value="2">Tarjeta de identidad</option>
                <option value="3">Cédula de extranjería</option>
              </select>
              <i className="fa-regular fa-id-card SNI"></i>
            </div>
          </div>

          <div className="Telefono">
            <div className="inContainer">
              <input type="tel" placeholder="Telefono" name="telefono" id="telefono1" />
              <i className="fa-solid fa-phone"></i>
            </div>

            <div className="inContainer">
              <input type="tel" placeholder="Telefono auxiliar" name="telefonosec" id="telefono2" />
              <i className="fa-solid fa-phone FP"></i>
            </div>

            <div className="inContainer">
              <input type="date" placeholder="Fecha de nacimiento" name="fechanac" id="fechaNacimiento" />
              <i className="fa-regular fa-calendar-days FN"></i>
            </div>
          </div>

          <div className="Correo">
            <div className="inContainer">
              <input type="email" placeholder="Correo" name="correo" id="correo" />
              <i className="fa-solid fa-envelope"></i>
            </div>

            <div className="inContainer">
              <input type="password" placeholder="Contraseña" name="contraseña" id="contraseña" />
              <i className="fa-solid fa-lock SNI"></i>
            </div>
          </div>
          <input type="submit" name="send" value="Enviar" className="boton" />
        </form>
      </section>
            </div>
        );
    }
}
export default register
