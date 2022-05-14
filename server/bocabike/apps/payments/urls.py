from django.urls import re_path
from .views import StripeCheckoutView


urlpatterns = [
    
    re_path('create-checkout-session', StripeCheckoutView.as_view()),



]
