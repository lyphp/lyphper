from django.urls import path
from . import views

urlpatterns = [
    path('login/',views.login),
    path('login/login_check',views.login_check),
    path('table/users/',views.users),
]