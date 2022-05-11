import React, { useState} from "react"
import { GoogleMap, useLoadScript, Marker } from "@react-google-maps/api"
import "./components_client.css";
import { Link } from 'react-router-dom';



const mapContainerStyle = {
  height: "700px",
  width: "100%",
  border: "1px solid black"
};


const options = {
  disableDefaultUI: true,
  zoomControl: true,
  mapId: "61736a0744acfe4",
};


const center = {
  lat: 38.76450086016372, 
  lng: -0.6132348024480611
};


export default function GoogleMaps({stations,current_position}) {

  const { isLoaded, loadError } = useLoadScript({
    googleMapsApiKey: "AIzaSyCr-EYddvY1btptNh6yi0nzIhVuJiqz8-Y"
  });

  const [selected, setSelected] = useState(null);

  const mapRef = React.useRef();

  const onMapLoad = React.useCallback((map) => {
    mapRef.current = map
  }, [])

  if (loadError) return "Error"
  if (!isLoaded) return "Loading..."

  return (

    <div>

      <div className="info_maps bg-light">

        <h1 className="maps_h1">Mira en nuestro mapa GEOLOCALIZADO que estación esta más cerca de ti!</h1>
        <Link to={`/stations/`} className="btn btn-primary my-2 mt-5">Volver a lista de estaciones</Link>

      </div>

    <div className="p-5 bg-light">

        <GoogleMap
          id="map"
          mapContainerStyle={mapContainerStyle}
          zoom={16.8}
          center={center}
          options={options}
          onLoad={onMapLoad}

        >
{/*  Mostramos ubicacion actual de la persona que accede a la APPen el mapa*/}

          {current_position
              ? 
      
              <Marker
                key={`${current_position.latitude}-${current_position.longitude}`}
                position={{ lat: Number(current_position.latitude), lng: Number(current_position.longitude) }}
            
                icon={{
                  url: 'https://img2.freepng.es/20180329/ohq/kisspng-location-computer-icons-symbol-clip-art-location-5abc97afd34d25.2794077115223090398655.jpg',
                  origin: new window.google.maps.Point(0, 0),
                  anchor: new window.google.maps.Point(15, 15),
                  scaledSize: new window.google.maps.Size(40, 60),
                }}
              />
              : ""
          }

{/* Mostramos la localizacion de las estaciones y enlacamos en el details de cada una para efecuar reserva */}

          {stations.map((marker) => (
            marker.state_station === "ON" 
            ? 
    
            <Marker
              key={`${marker.latitude}-${marker.longitude}`}
              position={{ lat: Number(marker.latitude), lng: Number(marker.longitude) }}
              onClick={() => {setSelected(marker);}}
              icon={{
                url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Parking_icon.svg/1200px-Parking_icon.svg.png',
                origin: new window.google.maps.Point(0, 0),
                anchor: new window.google.maps.Point(15, 15),
                scaledSize: new window.google.maps.Size(30, 50),
              }}
            />
            : ""
          ))}
          {selected ? (
                 window.location.href =   `/stationDetail/${selected.name}` /* Enviamos a la estacion seleccionada para efecturar reserva */
          ) : null}

        </GoogleMap>

      </div>
    </div>
  );
}

