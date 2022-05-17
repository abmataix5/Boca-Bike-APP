import React, { useEffect } from 'react';
import { useLocation } from 'react-router-dom';
import QueryString from 'query-string';


export default function Stripe () {

	const location = useLocation();

	useEffect(() => {
		
		const values = QueryString.parse(location.search);

		if (values.success) {
			console.log(
				'Éxito en el pago'
			);
		}

		if (values.canceled) {
			console.log(
				"Error en el pago"
			);
		}
	}, []);

	return (

			<form
				 action="http://127.0.0.1:8080/api/create-checkout-session"
				method='POST'
			>
				<button className='btn btn-primary' type='submit'>
					Alquilar bicicleta
				</button>
			</form>
	
	);
  }







