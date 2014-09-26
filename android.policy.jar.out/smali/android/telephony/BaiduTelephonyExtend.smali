.class public Landroid/telephony/BaiduTelephonyExtend;
.super Ljava/lang/Object;
.source "BaiduTelephonyExtend.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "BaiduTelephonyExtend"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduTelephonyExtendTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "BaiduTelephonyExtend"

    return-object v0
.end method

.method public static copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJ)I
    .locals 2
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timeStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .local p2, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 62
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 63
    .local v0, smsMgr:Landroid/telephony/SmsManager;
    if-eqz v0, :cond_0

    .line 68
    :cond_0
    return v1
.end method

.method public static getIccCardType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/BaiduExtIPhoneSubInfoProxy;

    invoke-direct {v2}, Lcom/android/internal/telephony/BaiduExtIPhoneSubInfoProxy;-><init>()V

    const-string v3, "iphonesubinfo"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/BaiduExtIPhoneSubInfoProxy;->getIccCardType(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 47
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 45
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getIccPinPukRetryTimes()I
    .locals 3

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/BaiduExtITelephonyProxy;

    invoke-direct {v1}, Lcom/android/internal/telephony/BaiduExtITelephonyProxy;-><init>()V

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/BaiduExtITelephonyProxy;->getIccPinPukRetryTimes(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 79
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isPhbReady()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
