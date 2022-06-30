from .models import Users,Sms,LastupdateManager,Lastupdate
from .serializers import Userserializer,Smsserializer
from rest_framework import  generics,permissions
from .permissions import IsAuthorOrReadOnly

from rest_framework.decorators import api_view





class UsersList(generics.ListCreateAPIView):
    permission_classes = (permissions.IsAuthenticated,)
    queryset = Users.objects.all()
    serializer_class = Userserializer


class UsersDetail(generics.RetrieveUpdateDestroyAPIView):
    permission_classes = (IsAuthorOrReadOnly,)
    queryset = Users.objects.all()
    serializer_class = Userserializer




