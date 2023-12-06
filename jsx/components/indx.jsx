import React from 'react';
import '../indx.css'; 

class Indx extends React.Component{


    render(){
      
        return(
          <div>
          <header>
            <a href="#" className="logo"><img src="imagenes/logo.png" alt="" style={{ width: '80px', borderRadius: '30%' }} /></a>
            <div className="menu">
              <div className="navegacion">
                <div className="navegacionItems">
                  <a href="#">Inicio</a>
                  <a href="#info">Sobre nosotros</a>
                  <a href="#form">Contáctanos</a>
                  <a href="/Logincopy.html">Cerrar Sesión</a>
                </div>
              </div>
            </div>
          </header>
  
          <section className="principal">
            {/* Aquí deberías importar tus imágenes y manejar su visualización condicionalmente */}
            <div className="contenido active">
              <h1 style={{ color: 'black' }}>TecnikStore <br /><span>¡Reparamos tu equipo!</span></h1>
              <a href="#form">Agendar cita YA!</a>
            </div>
            {/* Repite este bloque para cada imagen y contenido */}
            <div className="imgCambio">
              <div className="posicionImg active"></div>
              <div className="posicionImg"></div>
              <div className="posicionImg"></div>
              <div className="posicionImg"></div>
              <div className="posicionImg"></div>
            </div>
          </section>
  
          {/* Repite y adapta esta sección según tus necesidades */}
          <section className="Info">
            <h1>Quienes Somos</h1>
            <div className="Container">
              <div className="img">
                <img src="img/mantenimiento-computadores.jpg" alt="" />
              </div>
              <div className="Informacion">
                <p>
                  Tecnik Store es una empresa especializada en la prestación de servicios de asistencia técnica para electrodomésticos. Su misión es proporcionar soluciones eficientes y confiables a los clientes que requieren reparaciones y mantenimiento de sus dispositivos electrónicos. Sin embargo, como se ha señalado en el proceso de recopilación de datos, se han identificado ciertas áreas de preocupación que requieren atención y mejora en la organización.
                </p>
              </div>
            </div>
          </section>
  
          {/* Repite y adapta esta sección según tus necesidades */}
          <section className="opniones">
            <h1 className="opinionUsuario">¿Qué opinan nuestros clientes?</h1>
            <div className="tarjetas">
              {/* Repite este bloque para cada tarjeta de opinión */}
              <div className="card" style={{ width: '18rem' }}>
                <img className="card-img-top" src="img/imgUsuario.jpg" alt="Card image cap" />
                <div className="card-body">
                  <p className="card-text">Estoy extremadamente satisfecha con el servicio que recibí en Tecnik Store...</p>
                </div>
              </div>
              {/* Repite este bloque para cada tarjeta de opinión */}
            </div>
          </section>
  
          {/* Repite y adapta esta sección según tus necesidades */}
          <section className="mapa">
            <h1>¿Dónde nos ubicamos?</h1>
            <div className="contenedormap">
              <div className="googlemapa">
                {/* Aquí deberías integrar tu mapa, utiliza la etiqueta <iframe> y ajusta las propiedades según necesites */}
                <iframe src="..." width="100%" height="450" style={{ border: '0' }} allowFullScreen loading="lazy" referrerPolicy="no-referrer-when-downgrade"></iframe>
              </div>
            </div>
          </section>
  
          {/* Repite y adapta esta sección según tus necesidades */}
          <section className="section-form" id="form">
            <div className="containerform">
              <div className="contenedor-contacto">
                <div className="imagen"><img src="img/imgUsuario2.jpg" alt="" style={{ width: '500px' }} /></div>
                <div className="informacion">
                  <h2 className="linea">Te contactaremos</h2>
                  <form id="miFormulario">
                    <input type="text" className="field" placeholder="nombre" required />
                    <input type="email" className="field" placeholder="correo" required />
                    <input type="tel" className="field" placeholder="telefono" required />
                    <textarea placeholder="observaciones" className="field" required></textarea>
                    <button className="boton" type="submit">Enviar</button>
                  </form>
                </div>
              </div>
            </div>
          </section>
  
          {/* Agrega el código de tu footer */}
        </div>
            
        );
    }
}
export default Indx;
