from django.urls import path

from projectApp.views import ProjectCreateView, ProjectListView, ProjectDetailView

app_name = 'projectApp'

urlpatterns = [
    path('list/', ProjectListView.as_view(), name='list'),
    path('create/',ProjectCreateView.as_view(), name='create'),
    path('detail/<int:pk>', ProjectDetailView.as_view(), name='detail'),
]