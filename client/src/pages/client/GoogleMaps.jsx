import React from "react";
import { useStations } from "../../hooks/useStations";
import GoogleMaps from "../../components/client/maps";

export default function Stations() {

  const {stations} = useStations()
 
  navigator.geolocation.getCurrentPosition(function(position) {
    console.log("Latitude is :", position.coords.latitude);
    console.log("Longitude is :", position.coords.longitude);
    const current_position= {
      latitude:position.coords.latitude,
      longitude:position.coords.longitude
    }
  });

const current_position= ""
    return (
      <div>
 
        <GoogleMaps stations={stations} current_position={current_position}/>
      </div>
    );
  }