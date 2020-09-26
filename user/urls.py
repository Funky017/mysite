from django.urls import path
from . import views


urlpatterns = [
    path('login/', views.login, name='login'),
    path('login_for_model/', views.login_for_model, name='login_for_model'),
    path('register/', views.register, name='register'),
    path('login_out/', views.login_out, name='login_out'),
    path('user_info/', views.user_info, name='user_info'),
    path('change_nickname/', views.change_nickname, name='change_nickname'),
    path('bind_email/', views.bind_email, name='bind_email'),
    path('send_verification_code/', views.send_verification_code, name='send_verification_code'),
]
