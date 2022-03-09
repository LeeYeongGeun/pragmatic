from django.urls import path

from subscribeapp.views import SubScriptionView, SubscriptionListView

app_name = 'subscribeapp'

urlpatterns = [
    path('subscribes/', SubScriptionView.as_view(), name='subscribe'),
    path('list/', SubscriptionListView.as_view(), name='list'),
]