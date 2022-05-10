import React from 'react'
import Station from './station'
import Loading from 'react-simple-loading';
import { useUser } from '../../hooks/useUser';
import { Link } from 'react-router-dom';
export default function ListStations ({stations}) {

  const {  isLogged } = useUser(); 
  

       return(
        


        (stations.length === 0) ? <Loading/>:    


        <div>

          <section className="py-5 text-center container">
            <div className="row py-lg-5">
              <div className="col-lg-6 col-md-8 mx-auto">
                <h1 className="fw-light">Quieres saber cual es la estación más cerca de ti? </h1>
            
                <p>

                  <Link to={`/maps_view/`} className="btn btn-primary my-2">Ver en mapa</Link>
                </p>
              </div>
            </div>
          </section>

          <div className="album py-5 bg-light">
            <div className="container">
            <div className="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

                  {stations.map((station,index) =>
                
                    <Station key={index}  station={station} />
              
                  )}
               
            </div>
            </div>
          </div>

       </div>
     
      ) 
  }
