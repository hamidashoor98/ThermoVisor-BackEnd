from rest_framework import serializers
from .models import Users,Sms,Lastupdate


class Userserializer(serializers.ModelSerializer):
    class Meta:
        model = Users
        fields = ('idUsers',)


class Lastupdateserializer(serializers.ModelSerializer):
    class Meta:
        model = Lastupdate
        fields = ('LastTime','T_one','T_two','C_one','C_two','Door_left_open','Emergency','Black_out','idDevices_Fk','Door_left_open_time','Send_time','Black_out_time')



class Smsserializer(serializers.ModelSerializer):
    class Meta:
        model = Sms
        fields = ('textSms','idDevices_Fk')



