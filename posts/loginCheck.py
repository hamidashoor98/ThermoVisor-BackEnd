from .models import AuthUser

from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from rest_framework.permissions import IsAuthenticated,AllowAny
from rest_framework.decorators import permission_classes
from rest_framework.decorators import api_view
import datetime
import re
from rest_framework import status
from rest_framework.response import Response
from rest_framework.parsers import JSONParser


@api_view(['POST'])
@permission_classes((AllowAny, ))



def LoginCheck(request):

    if request.method == "POST" :
        try:
            user = User.objects.get(username=request.data['username'])
            if user.check_password(request.data['password']):
                token=Token.objects.get_or_create(user=user)
                content = {'status':200,'token':token[0].key ,'type': AuthUser.objects.get(username=request.data['username']).type}
                return Response(content, status=status.HTTP_200_OK)
            else:
                content = {'status':406,'token': 'password is incorrect'}
                return Response(content, status=status.HTTP_406_NOT_ACCEPTABLE)
                pass


        except User.DoesNotExist:
            content = {'status':404,'token':'wrong'}
            return Response(content, status=status.HTTP_404_NOT_FOUND)
            pass



























