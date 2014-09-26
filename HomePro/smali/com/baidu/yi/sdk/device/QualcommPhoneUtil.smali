.class Lcom/baidu/yi/sdk/device/QualcommPhoneUtil;
.super Ljava/lang/Object;
.source "QualcommPhoneUtil.java"

# interfaces
.implements Lcom/baidu/yi/sdk/device/IPhoneUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/baidu/yi/sdk/device/QualcommPhoneUtil;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 4
    .parameter "slot"

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, imei:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/yi/sdk/device/QualcommPhoneUtil;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 21
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 22
    return-object v0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 9
    .parameter "slotNumber"

    .prologue
    const/4 v5, 0x0

    .line 80
    :try_start_0
    const-string v4, "android.telephony.MSimTelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 83
    .local v3, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, telephonyManager:Ljava/lang/Object;
    const-string v4, "getSubscriberId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    .local v1, getPhoneStateMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getPhoneStateMethod:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Ljava/lang/Object;
    .end local v3           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 91
    :catch_0
    move-exception v4

    move-object v4, v5

    .line 93
    goto :goto_0
.end method

.method public isCompatable()Z
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 101
    .local v1, yidmc2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.telephony.MSimSmsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 102
    const-string v2, "android.telephony.MSimTelephonyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 108
    const/4 v2, 0x1

    .line 109
    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSlotEnabled(I)Z
    .locals 10
    .parameter "smsNumber"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, result:Z
    if-eqz p1, :cond_0

    if-eq v7, p1, :cond_0

    .line 49
    :goto_0
    return v6

    .line 34
    :cond_0
    :try_start_0
    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 37
    .local v5, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 41
    .local v4, telephonyManager:Ljava/lang/Object;
    const-string v6, "getSimState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    .local v1, getPhoneStateMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 43
    .local v3, simState:I
    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    .line 44
    const/4 v2, 0x1

    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getPhoneStateMethod:Ljava/lang/reflect/Method;
    .end local v3           #simState:I
    .end local v4           #telephonyManager:Ljava/lang/Object;
    .end local v5           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    move v6, v2

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "smscardNumber"

    .prologue
    .line 55
    const/4 v3, 0x1

    .line 59
    .local v3, result:Z
    :try_start_0
    const-string v6, "android.telephony.MSimSmsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 60
    .local v5, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 61
    .local v2, method_getSmsManager:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 63
    .local v4, smssender:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 64
    const-string v7, "sendTextMessage"

    .line 65
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 66
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 63
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 67
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    const/4 v7, 0x5

    .line 68
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 67
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #method_getSmsManager:Ljava/lang/reflect/Method;
    .end local v4           #smssender:Ljava/lang/Object;
    .end local v5           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
