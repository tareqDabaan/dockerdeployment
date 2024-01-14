from django.urls import path,include

from rest_framework.routers import DefaultRouter

from . import views
app_name = "dockerapp"
urlpatterns = [
    path("user/", views.MyUser.as_view(), name="service_provider"), #
    
]
