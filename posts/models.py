from django.db import models
from django.contrib.auth.models import User
# Create your models here.
from django.db import models
from django.contrib.auth.models import User

class AccountEmailaddress(models.Model):
    id = models.BigAutoField(primary_key=True)
    email = models.CharField(unique=True, max_length=254)
    verified = models.IntegerField()
    primary = models.IntegerField()
    user = models.ForeignKey('AuthUser', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'account_emailaddress'


class AccountEmailconfirmation(models.Model):
    id = models.BigAutoField(primary_key=True)
    created = models.DateTimeField()
    sent = models.DateTimeField(blank=True, null=True)
    key = models.CharField(unique=True, max_length=64)
    email_address = models.ForeignKey(AccountEmailaddress, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'account_emailconfirmation'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)

class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()
    type = models.CharField(max_length=2)
    mobile = models.CharField(max_length=11)
    companyid = models.ForeignKey('Companies', models.DO_NOTHING, db_column='companyId')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class AuthtokenToken(models.Model):
    key = models.CharField(primary_key=True, max_length=40)
    created = models.DateTimeField()
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'authtoken_token'


class Companies(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=100, db_collation='utf8_general_ci')  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=500, db_collation='utf8_general_ci', blank=True, null=True)  # Field name made lowercase.
    username = models.CharField(db_column='Username', max_length=45)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=64)  # Field name made lowercase.
    type = models.CharField(db_column='Type', max_length=2)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'companies'


class Devices(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    mobile = models.CharField(db_column='Mobile', max_length=11)  # Field name made lowercase.
    buildnumber = models.CharField(db_column='BuildNumber', max_length=45)  # Field name made lowercase.
    refid = models.ForeignKey('Refs', models.DO_NOTHING, db_column='RefId')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'devices'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class DjangoSite(models.Model):
    domain = models.CharField(unique=True, max_length=100)
    name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'django_site'


class Lastupdate(models.Model):
    lasttime = models.BigIntegerField(db_column='LastTime', blank=True, null=True)  # Field name made lowercase.
    t_one = models.CharField(db_column='T_one', max_length=45, blank=True, null=True)  # Field name made lowercase.
    t_two = models.CharField(db_column='T_two', max_length=45, blank=True, null=True)  # Field name made lowercase.
    c_one = models.CharField(db_column='C_one', max_length=45, blank=True, null=True)  # Field name made lowercase.
    c_two = models.CharField(db_column='C_two', max_length=45, blank=True, null=True)  # Field name made lowercase.
    voltage = models.CharField(max_length=45, blank=True, null=True)
    iddevices_fk = models.OneToOneField(Devices, models.DO_NOTHING, db_column='idDevices_Fk', primary_key=True)  # Field name made lowercase.
    door_left_open = models.CharField(db_column='Door_left_open', max_length=45, blank=True, null=True)  # Field name made lowercase.
    emergency = models.CharField(db_column='Emergency', max_length=45, blank=True, null=True)  # Field name made lowercase.
    black_out = models.IntegerField(db_column='Black_out', blank=True, null=True)  # Field name made lowercase.
    send_time = models.CharField(db_column='Send_time', max_length=45, blank=True, null=True)  # Field name made lowercase.
    door_left_open_time = models.CharField(db_column='Door_left_open_time', max_length=45, blank=True, null=True)  # Field name made lowercase.
    black_out_time = models.CharField(db_column='Black_out_time', max_length=45, blank=True, null=True)  # Field name made lowercase.
    min_temprature1 = models.IntegerField(blank=True, null=True)
    max_temprature1 = models.IntegerField(blank=True, null=True)
    min_temprature2 = models.IntegerField(blank=True, null=True)
    max_temprature2 = models.IntegerField(blank=True, null=True)
    max_current1 = models.IntegerField(blank=True, null=True)
    max_current2 = models.IntegerField(blank=True, null=True)
    time_repeat_sms = models.IntegerField(blank=True, null=True)
    curren1_name = models.CharField(max_length=255, blank=True, null=True)
    curren1_ratio = models.IntegerField(blank=True, null=True)
    curren2_name = models.CharField(max_length=255, blank=True, null=True)
    curren2_ratio = models.IntegerField(blank=True, null=True)
    moretemp2 = models.IntegerField(blank=True, null=True)
    morecurrent2 = models.IntegerField(blank=True, null=True)
    dangertemp1 = models.CharField(max_length=45, blank=True, null=True)
    dangertemp2 = models.CharField(max_length=45, blank=True, null=True)
    dangercurr1 = models.CharField(max_length=45, blank=True, null=True)
    dangercurr2 = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'lastupdate'


class Refs(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=100, db_collation='utf8_general_ci')  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=500, db_collation='utf8_general_ci')  # Field name made lowercase.
    companyid = models.ForeignKey(Companies, models.DO_NOTHING, db_column='CompanyId')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'refs'


class Sms(models.Model):
    id_sms = models.BigIntegerField(primary_key=True)
    textsms = models.CharField(db_column='textSms', max_length=250, blank=True, null=True)  # Field name made lowercase.
    iddevices_fk = models.ForeignKey(Devices, models.DO_NOTHING, db_column='idDevices_Fk')  # Field name made lowercase.
    created_at = models.DateTimeField(blank=True, null=True)
    smscol = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sms'


class SocialaccountSocialaccount(models.Model):
    id = models.BigAutoField(primary_key=True)
    provider = models.CharField(max_length=30)
    uid = models.CharField(max_length=191)
    last_login = models.DateTimeField()
    date_joined = models.DateTimeField()
    extra_data = models.TextField()
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'socialaccount_socialaccount'
        unique_together = (('provider', 'uid'),)


class SocialaccountSocialapp(models.Model):
    id = models.BigAutoField(primary_key=True)
    provider = models.CharField(max_length=30)
    name = models.CharField(max_length=40)
    client_id = models.CharField(max_length=191)
    secret = models.CharField(max_length=191)
    key = models.CharField(max_length=191)

    class Meta:
        managed = False
        db_table = 'socialaccount_socialapp'


class SocialaccountSocialappSites(models.Model):
    id = models.BigAutoField(primary_key=True)
    socialapp_id = models.BigIntegerField()
    site = models.ForeignKey(DjangoSite, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'socialaccount_socialapp_sites'
        unique_together = (('socialapp_id', 'site'),)


class SocialaccountSocialtoken(models.Model):
    id = models.BigAutoField(primary_key=True)
    token = models.TextField()
    token_secret = models.TextField()
    expires_at = models.DateTimeField(blank=True, null=True)
    account = models.ForeignKey(SocialaccountSocialaccount, models.DO_NOTHING)
    app = models.ForeignKey(SocialaccountSocialapp, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'socialaccount_socialtoken'
        unique_together = (('app', 'account'),)


class UserDevices(models.Model):
    userid = models.OneToOneField('Users', models.DO_NOTHING, db_column='userId', primary_key=True)  # Field name made lowercase.
    deviceid = models.ForeignKey(Devices, models.DO_NOTHING, db_column='deviceId')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user_devices'
        unique_together = (('userid', 'deviceid'),)


class Users(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=50, db_collation='utf8_general_ci')  # Field name made lowercase.
    family = models.CharField(db_column='Family', max_length=100, db_collation='utf8_general_ci')  # Field name made lowercase.
    type = models.CharField(db_column='Type', max_length=2)  # Field name made lowercase.
    mobile = models.CharField(db_column='Mobile', max_length=11)  # Field name made lowercase.
    username = models.CharField(db_column='Username', max_length=50)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=64)  # Field name made lowercase.
    companyid = models.ForeignKey(Companies, models.DO_NOTHING, db_column='CompanyId')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'users'


class UsersRef(models.Model):
    idUsers = models.IntegerField(db_column='idUsers', primary_key=True)  # Field name made lowercase.
    idRefs = models.IntegerField(db_column='idRefs')  # Field name made lowercase.
    hashName = models.CharField(db_column='name_hash', max_length=80, blank=True, null=True)  # Field name made lowercase.


    class Meta:
        managed = False
        db_table = 'users_ref'
        unique_together = (('idUsers', 'idRefs'),)

class LastupdateManager(models.Manager):
    def create_Lastupdate(self, title,title2):
        lastupdate = self.create(T_one=title,T_two=title2)


        # do something with the book
        return lastupdate

