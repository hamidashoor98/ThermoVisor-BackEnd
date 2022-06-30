from .models import Users,Sms,LastupdateManager,Lastupdate,Devices
from .serializers import Userserializer,Smsserializer
from rest_framework import  generics,permissions
from .permissions import IsAuthorOrReadOnly
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



def TimesCheck(request):

    if request.method == "POST":
        p=Lastupdate.objects.get(idDevices_Fk=int(request.data['idDevices_Fk']))
        M=p.T_two

        if  p.Door_left_open_time==None or p.Black_out_time==None or p.Send_time==None :
            content = {'Response':'Server Didnt get anything yet!'}
            return Response(content, status=status.HTTP_200_OK)


        else:
            content = {'Rep.Time':p.Send_time ,'DLO.Time':p.Door_left_open_time ,'Bla.Time': p.Black_out_time }
            return Response(content, status=status.HTTP_200_OK)












