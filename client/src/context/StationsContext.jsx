import React, {useState} from 'react'

const Context = React.createContext({})

export function StationsContextProvider ({children}) {
  const [stations, setStations] = useState([])
  const [geolocation, setGeolocation] = useState(null)

  return <Context.Provider value={{stations, setStations, geolocation, setGeolocation}}>
    {children}
  </Context.Provider>
}

export default Context