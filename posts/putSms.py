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



def PostSms(request):

    if request.method == "POST":
        device=Devices.objects.get(idDevices=int(request.data['idDevices_Fk']))
        p = Sms(id_sms=int(datetime.datetime.now().timestamp()*100000),textSms=request.data['textSms'], idDevices_Fk=device)
        p.save()





    content = {'Response': 'OK'}
    return Response(content, status=status.HTTP_200_OK)












