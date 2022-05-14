import React from "react";
import ListStations from "../../components/client/liststations";
 import { useBikes } from "../../hooks/useBikes"; 
import { useStations } from "../../hooks/useStations";
import GoogleMaps from "../../components/client/maps";
import Stripe from "../../components/client/stripe";
export default function Stations() {

  const {stations} = useStations()
 

    return (
      <div>
      <ListStations stations={stations}/>
      <Stripe></Stripe>
      </div>
    );
  }

 