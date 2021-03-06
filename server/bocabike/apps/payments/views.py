from django.conf import settings
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.shortcuts import redirect

import stripe

stripe.api_key = settings.STRIPE_SECRET_KEY

class StripeCheckoutView(APIView):
    def post(self, request):
        try:
          
            checkout_session = stripe.checkout.Session.create(
                line_items=[
                    {
                        'price': 'price_1Kyv0CFQQQP6KluJjzYNNmYK',
                        'quantity': 1,
                    },
                ],
                payment_method_types=['card'],
                mode='payment',
                success_url= settings.SITE_URL + '/stationDetail/Ayuntamiento',
                cancel_url=settings.SITE_URL + '/stations',
            )

            return redirect(checkout_session.url)
        except:
      
            return Response(
                {'error': 'Error en la creacion de la sesion de pago'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )