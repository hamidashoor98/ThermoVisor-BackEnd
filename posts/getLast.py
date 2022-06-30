from django.contrib.auth.hashers import check_password

from .models import Users,Sms,LastupdateManager,Lastupdate,Devices,AuthUser,Refs,UsersRef
from .serializers import Userserializer,Smsserializer
from rest_framework import  generics,permissions
from .permissions import IsAuthorOrReadOnly
from rest_framework.permissions import IsAuthenticated,AllowAny
from rest_framework.decorators import permission_classes
from rest_framework.decorators import api_view
from rest_framework.authtoken.models import Token

import datetime
import re
from rest_framework import status
from rest_framework.response import Response
from rest_framework.parsers import JSONParser
from django.contrib.auth.models import User


@api_view(['POST'])
@permission_classes((AllowAny, ))



def GetLast(request):

    if request.method == "POST" and request.data['each']=="one":
        try:
            user = User.objects.get(username=request.data['username'])
            if user.check_password(request.data['password']):
                devices = Devices.objects.get(BuildNumber=request.data['name_device'])
                sms = Sms.objects.filter(idDevices_Fk=devices)
                list = []
                list1 = []

                for item in sms:
                    content = {"Message": item.textSms, "Timestamp": item.id_sms}
                    list.append(content)
                content1 = {devices.BuildNumber: list}
                list1.append(content1)

                return Response(list1, status=status.HTTP_200_OK)

            else:
                content = {'loginStatus': 'Wrong user or Password'}
                return Response(content, status=status.HTTP_406_NOT_ACCEPTABLE)
                pass


        except User.DoesNotExist:
            content = {'loginStatus': 'User DoesNotExist'}
            return Response(content, status=status.HTTP_404_NOT_FOUND)
            pass



    if request.method == "POST" and request.data['each']=="all":

        try:
            user = User.objects.get(username=request.data['username'])
            if   Token.objects.get(user=user).key==request.data['token']:
                authUser = AuthUser.objects.get(username=request.data['username'])
                users = Users.objects.get(id_auth_user_Fk=authUser)
                usersRef = UsersRef.objects.filter(idUsers=users.idUsers)

                list = []
                list1 = []
                for item in usersRef:
                    list = []
                    devices = Devices.objects.filter(idRefs_Fk=item.idRefs)
                    for item1 in devices:
                        lastupdate = Lastupdate.objects.get(idDevices_Fk=item1)
                        content = {'Ref_name': Refs.objects.get(idRefs=item.idRefs).Ref_name,'Device_Number': item1.BuildNumber,'authorized_mobile_number':item1.PhoneNumber ,'T_one': lastupdate.T_one,
                                   'T_two': lastupdate.T_two,
                                   'C_one': lastupdate.C_one, 'C_two': lastupdate.C_two,'voltage':lastupdate.voltage,'min_temprature1':lastupdate.min_temprature1,'max_temprature1':lastupdate.max_temprature1,'min_temprature2':lastupdate.min_temprature2,
                                   'max_temprature2':lastupdate.max_temprature2,'max_current1':lastupdate.max_current1,'max_current2':lastupdate.max_current2,'time_repeat_sms':lastupdate.time_repeat_sms,'curren1_name':lastupdate.curren1_name,'curren1_ratio':lastupdate.curren1_ratio,'curren2_name':lastupdate.curren2_name,'curren2_ratio':lastupdate.curren2_ratio,'moretemp2':lastupdate.moretemp2,'morecurrent2':lastupdate.morecurrent2,
                                   'LastTime': lastupdate.LastTime, 'Door_left_open': lastupdate.Door_left_open,
                                   'Emergency': lastupdate.Emergency, 'Black_out': lastupdate.Black_out}

                        list.append(content)
                    content1 = {'Refregrator': list}
                    list1.append(content1)
                return Response(list1, status=status.HTTP_200_OK)



        except User.DoesNotExist:
            content = {'loginStatus': 'User DoesNotExist'}
            return Response(content, status=status.HTTP_404_NOT_FOUND)
            pass

























