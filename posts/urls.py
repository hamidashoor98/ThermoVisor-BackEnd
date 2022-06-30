from .views import UsersList, UsersDetail
from .putSms import PostSms
from .timesCheck import TimesCheck
from .getLast import GetLast
from .loginCheck import LoginCheck

from django.urls import path
from .models import Users,Sms,LastupdateManager,Lastupdate
from .serializers import Userserializer,Smsserializer

urlpatterns=[

    path('',UsersList.as_view()),
    path('<int:pk>/',UsersDetail.as_view()),
    path('putsms/',PostSms, name='PostSms' ),
    path('timescheck/',TimesCheck, name='TimesCheck' ),
    path('getlast/', GetLast, name='GetLast'),
path('login/', LoginCheck, name='LoginCheck'),

]