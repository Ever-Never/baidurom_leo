.class public Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telephony"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Ljava/lang/String;)V
    .locals 11
    .parameter "number"

    .prologue
    .line 116
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 117
    .local v5, tm:Landroid/telephony/TelephonyManager;
    if-nez v5, :cond_0

    .line 118
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TelephonyManager is not exsited!"

    invoke-static {v6, v7}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 122
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 123
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/telephony/TelephonyManager;>;"
    const/4 v3, 0x0

    .line 125
    .local v3, getITelephonyMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v6, "getITelephony"

    .line 126
    const/4 v7, 0x0

    .line 125
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 127
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    :goto_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    .local v4, iTelephony:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "call"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, dial:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 141
    .end local v1           #dial:Ljava/lang/reflect/Method;
    .end local v4           #iTelephony:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 146
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 152
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static dial(Ljava/lang/String;)V
    .locals 11
    .parameter "number"

    .prologue
    .line 72
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 73
    .local v5, tm:Landroid/telephony/TelephonyManager;
    if-nez v5, :cond_0

    .line 74
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TelephonyManager is not exsited!"

    invoke-static {v6, v7}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 78
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 79
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/telephony/TelephonyManager;>;"
    const/4 v3, 0x0

    .line 81
    .local v3, getITelephonyMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v6, "getITelephony"

    .line 82
    const/4 v7, 0x0

    .line 81
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 83
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    :goto_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 95
    .local v4, iTelephony:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "dial"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, dial:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 97
    .end local v1           #dial:Ljava/lang/reflect/Method;
    .end local v4           #iTelephony:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 86
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 102
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 105
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 108
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v2

    .line 111
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 165
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 166
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager is not exsited!"

    invoke-static {v2, v3}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, ""

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "^0+0$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 183
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager is not exsited!"

    invoke-static {v1, v2}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, ""

    .line 188
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "number"
    .parameter "body"

    .prologue
    .line 60
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, smsToUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static telephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method


# virtual methods
.method public getCellLocation()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v13, cellArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;>;"
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v17

    .line 225
    .local v17, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v17, :cond_1

    .line 226
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TelephonyManager is not exsited!"

    invoke-static {v2, v6}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-object v13

    .line 230
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v18

    .line 232
    .local v18, type:I
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, operator:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, mcc:I
    const/4 v2, 0x3

    const/4 v6, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 236
    .local v4, mnc:I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    .line 237
    const/4 v2, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    .line 238
    const/16 v2, 0x8

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    .line 241
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v14

    check-cast v14, Landroid/telephony/gsm/GsmCellLocation;

    .line 242
    .local v14, location:Landroid/telephony/gsm/GsmCellLocation;
    if-nez v14, :cond_3

    .line 243
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "GsmCellLocation is null!"

    invoke-static {v2, v6}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    new-instance v1, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v2, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;->GSM:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 248
    invoke-virtual {v14}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    invoke-virtual {v14}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v6

    .line 247
    invoke-direct/range {v1 .. v6}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 250
    .local v1, currentCell:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v15

    .line 254
    .local v15, neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 255
    .local v12, cell:Landroid/telephony/NeighboringCellInfo;
    new-instance v5, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v6, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;->GSM:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 256
    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    move v7, v3

    move v8, v4

    .line 255
    invoke-direct/range {v5 .. v10}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 258
    .local v5, neighboringCell:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    .end local v1           #currentCell:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    .end local v5           #neighboringCell:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    .end local v12           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v14           #location:Landroid/telephony/gsm/GsmCellLocation;
    .end local v15           #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_4
    const/4 v2, 0x4

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    .line 261
    const/4 v2, 0x5

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    .line 262
    const/4 v2, 0x6

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    .line 263
    const/4 v2, 0x7

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 266
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v14

    check-cast v14, Landroid/telephony/cdma/CdmaCellLocation;

    .line 267
    .local v14, location:Landroid/telephony/cdma/CdmaCellLocation;
    if-nez v14, :cond_6

    .line 268
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CdmaCellLocation is null!"

    invoke-static {v2, v6}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_6
    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .line 274
    new-instance v1, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v7, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;->CDMA:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 275
    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v10

    invoke-virtual {v14}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v11

    move-object v6, v1

    move v8, v3

    move v9, v4

    .line 274
    invoke-direct/range {v6 .. v11}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 277
    .restart local v1       #currentCell:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v15

    .line 281
    .restart local v15       #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 282
    .restart local v12       #cell:Landroid/telephony/NeighboringCellInfo;
    new-instance v5, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v6, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;->CDMA:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 283
    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    move v7, v3

    move v8, v4

    .line 282
    invoke-direct/range {v5 .. v10}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 285
    .restart local v5       #neighboringCell:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
