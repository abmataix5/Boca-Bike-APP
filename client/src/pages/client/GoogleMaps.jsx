import React from "react";
import { useStations } from "../../hooks/useStations";
import GoogleMaps from "../../components/client/maps";
import { useGeolocation } from "../../hooks/useGeolocation";

export default function Stations() {

  const {stations} = useStations()
  const {geolocation} = useGeolocation()
  



const current_position= ""
    return (
      <div>
        <GoogleMaps stations={stations} current_position={geolocation}/>
      </div>
    );
  }