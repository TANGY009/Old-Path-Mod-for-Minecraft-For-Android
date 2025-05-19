.class public Lcom/android/support/GRxPermissions;
.super Ljava/lang/Object;
.source "GRxPermissions.java"


# static fields
.field private static final PERMISSIONS_GRANTED_KEY:Ljava/lang/String; = "permissions_granted"

.field private static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arePermissionsGranted(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "MyPrefs"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    const-string v1, "permissions_granted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkOut(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
 
    .prologue
    const/4 v1, 0x0

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 15
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 20
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 23
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 24
    array-length v1, v0

    if-lez v1, :cond_0

    .line 25
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void

    .line 17
    :cond_1
    aget-object v4, v2, v0

    .line 18
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "android.permission."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mCheckPerm(Landroid/app/Activity;)V
    .locals 1
 
    .prologue
    .line 31
    const-string v0, "MANAGE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/android/support/GRxPermissions;->checkOut(Landroid/app/Activity;Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/android/support/GRxPermissions;->arePermissionsGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "MANAGE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/android/support/GRxPermissions;->checkOut(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

#### в метод onCreate вставить после .locals ##########

# invoke-static {p0}, Lcom/android/support/GRxPermissions;->mCheckPerm(Landroid/app/Activity;)V



####### Календарь
# READ_CALENDAR
# WRITE_CALENDAR


####### Журнал вызовов
# READ_CALL_LOG
# WRITE_CALL_LOG
# PROCESS_OUTGOING_CALLS


####### Камера
# CAMERA


####### Контакты
# READ_CONTACTS
# WRITE_CONTACTS
# GET_ACCOUNTS


#### Местоположение
# ACCESS_FINE_LOCATION
# ACCESS_COARSE_LOCATION


# Микрофон
# RECORD_AUDIO


#### Телефон
# READ_PHONE_STATE
# READ_PHONE_NUMBERS
# CALL_PHONE
# ANSWER_PHONE_CALLS
# ADD_VOICEMAIL
# USE_SIP


#### Сенсоры
# BODY_SENSORS


#### Сообщения
# SEND_SMS
# RECEIVE_SMS
# READ_SMS
# RECEIVE_WAP_PUSH
# RECEIVE_MMS


### Хранилище
# READ_EXTERNAL_STORAGE
# WRITE_EXTERNAL_STORAGE
# MANAGE_EXTERNAL_STORAGE




#     <!-- Разрешения для календаря -->
#     <uses-permission android:name="android.permission.READ_CALENDAR" />
#     <uses-permission android:name="android.permission.WRITE_CALENDAR" />
# 
#     <!-- Разрешения для журнала вызовов -->
#     <uses-permission android:name="android.permission.READ_CALL_LOG" />
#     <uses-permission android:name="android.permission.WRITE_CALL_LOG" />
#     <uses-permission android:name="android.permission.PROCESS_OUTGOING_CALLS" />
# 
#     <!-- Разрешения для камеры -->
#     <uses-permission android:name="android.permission.CAMERA" />
# 
#     <!-- Разрешения для контактов -->
#     <uses-permission android:name="android.permission.READ_CONTACTS" />
#     <uses-permission android:name="android.permission.WRITE_CONTACTS" />
#     <uses-permission android:name="android.permission.GET_ACCOUNTS" />
# 
#     <!-- Разрешения для местоположения -->
#     <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
#     <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
# 
#     <!-- Разрешения для микрофона -->
#     <uses-permission android:name="android.permission.RECORD_AUDIO" />
# 
#     <!-- Разрешения для телефона -->
#     <uses-permission android:name="android.permission.READ_PHONE_STATE" />
#     <uses-permission android:name="android.permission.READ_PHONE_NUMBERS" />
#     <uses-permission android:name="android.permission.CALL_PHONE" />
#     <uses-permission android:name="android.permission.ANSWER_PHONE_CALLS" />
#     <uses-permission android:name="android.permission.ADD_VOICEMAIL" />
#     <uses-permission android:name="android.permission.USE_SIP" />
# 
#     <!-- Разрешения для сенсоров -->
#     <uses-permission android:name="android.permission.BODY_SENSORS" />
# 
#     <!-- Разрешения для сообщений -->
#     <uses-permission android:name="android.permission.SEND_SMS" />
#     <uses-permission android:name="android.permission.RECEIVE_SMS" />
#     <uses-permission android:name="android.permission.READ_SMS" />
#     <uses-permission android:name="android.permission.RECEIVE_WAP_PUSH" />
#     <uses-permission android:name="android.permission.RECEIVE_MMS" />
# 
#     <!-- Разрешения для хранилища -->
#     <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
#     <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
#     <uses-permission android:name="android.permission.MANAGE_EXTERNAL_STORAGE" />
 