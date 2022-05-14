import React, { useEffect } from 'react';
import { useLocation } from 'react-router-dom';
import QueryString from 'query-string';


export default function Stripe () {

	const location = useLocation();

	useEffect(() => {
		// Check to see if this is a redirect back from Checkout
		// const query = new URLSearchParams(window.location.search);
		const values = QueryString.parse(location.search);

		if (values.success) {
			console.log(
				'Order placed! You will receive an email confirmation.'
			);
		}

		if (values.canceled) {
			console.log(
				"Order canceled -- continue to shop around and checkout when you're ready."
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







