from .models import Sms,Devices

from rest_framework.permissions import IsAuthenticated,AllowAny
from rest_framework.decorators import permission_classes
from rest_framework.decorators import api_view
import datetime
from rest_framework import status
from rest_framework.response import Response


@api_view(['POST'])
@permission_classes((AllowAny, ))



def PostSms(request):

    if request.method == "POST":
        m=request.data
        try:
            mm=int(request.data['deviceId'][0])
            device = Devices.objects.get(id=int(request.data['deviceId']))
            p = Sms(id_sms=int(datetime.datetime.now().timestamp() * 100000), textsms=request.data['data'],
                    iddevices_fk=device)
            p.save()
            content = {'Response': 'OK'}

        except Exception as e:
            print(e)
            content = {'Response': e}


    return Response(content, status=status.HTTP_200_OK)
