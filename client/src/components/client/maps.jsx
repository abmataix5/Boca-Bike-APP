import React, { useState} from "react"
import { GoogleMap, useLoadScript, Marker, InfoWindow } from "@react-google-maps/api"



const mapContainerStyle = {
  height: "700px",
  width: "100%",
};
const options = {
  disableDefaultUI: true,
  zoomControl: true,
  mapId: "61736a0744acbfe4",
};
const center = {
  lat: 38.76450086016372, 
  lng: -0.6132348024480611
};

export default function GoogleMaps({stations}) {
    console.log(stations)
  const { isLoaded, loadError } = useLoadScript({
    googleMapsApiKey: "AIzaSyCr-EYddvY1btptNh6yi0nzIhVuJiqz8-Y"
  });
  const [selected, setSelected] = useState(null)
  const mapRef = React.useRef();
  const onMapLoad = React.useCallback((map) => {
    mapRef.current = map
  }, [])

  if (loadError) return "Error"
  if (!isLoaded) return "Loading..."

  return (
    <div>
        <GoogleMap
          id="map"
          mapContainerStyle={mapContainerStyle}
          zoom={16.8}
          center={center}
          options={options}
          onLoad={onMapLoad}
        >
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
  );
}

