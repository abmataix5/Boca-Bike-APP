import React from "react";
import "./css_pages.css";

export default function InfoBike() {

    return (
    <div className="container-fluid">

<div class="row">
    <div className="col info_img">
      <img src="./logo.png" class="info_img"></img>
    </div>
    <div className="col info_column">
      <h1 className="p-5">Que es boca bike y como funciona?</h1>
      <p>BocaBike es una aplicación desarrollada como proyecto final de 2n DAW</p>
      <p>La App esta pensada para la gestion de una empresa de alquileres de bicis electricas, en la que oferimos
        a los clientes la posibilidad de alquilar una bicicleta en la estacion mas cercana a su ubicación actual, ya que laaplicacion cuenta con geolocalización
        la cual te mostrara en el mapa tu posicion actual para que puedas ver la estacion mas cercana a ti en el momento exacto.
      </p>
    
      <p>Para el usuario administrador ofrecemos la posibilidad de gestionar las estaciones, ver las bicicletas disponibles, estadisticas generales de la app
y raniking de usuarios mas activos en la APP. también ofrecemos la posibilidad de gestion de incidencias.
      </p>

      <p>No lo dudes y empieza a realizar tus desplacamientos con BocaBike!
      </p>
    </div>
  </div>
    </div>
    );
  }