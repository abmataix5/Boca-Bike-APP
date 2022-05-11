import {useContext, useEffect, useState,useCallback} from 'react'

import StationsContext from '../context/StationsContext'



export function useGeolocation () {
  

  const {geolocation, setGeolocation} = useContext(StationsContext)

  useEffect(function () {


    navigator.geolocation.getCurrentPosition(function(position) {
   
        const current_position= {
          latitude:position.coords.latitude,
          longitude:position.coords.longitude
        }
    
        setGeolocation(current_position)

      });
    
  }, [setGeolocation])



  return { geolocation}
}
