.class public Lcom/baidu/launcher/thememanager/network/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 38
    :cond_0
    return-object v1
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 65
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 66
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 67
    .local v0, networkType:I
    const-string v2, ""

    .line 68
    .local v2, type:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 104
    const-string v2, "UNKNOWN"

    .line 107
    :goto_0
    return-object v2

    .line 70
    :pswitch_0
    const-string v2, "1xRTT"

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    const-string v2, "CDMA"

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    const-string v2, "EDGE"

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    const-string v2, "EVDO 0"

    .line 80
    goto :goto_0

    .line 82
    :pswitch_4
    const-string v2, "EVDO A"

    .line 83
    goto :goto_0

    .line 85
    :pswitch_5
    const-string v2, "GPRS"

    .line 86
    goto :goto_0

    .line 88
    :pswitch_6
    const-string v2, "HSDPA"

    .line 89
    goto :goto_0

    .line 91
    :pswitch_7
    const-string v2, "HSPA"

    .line 92
    goto :goto_0

    .line 94
    :pswitch_8
    const-string v2, "HSUPA"

    .line 95
    goto :goto_0

    .line 97
    :pswitch_9
    const-string v2, "IDEN"

    .line 98
    goto :goto_0

    .line 100
    :pswitch_a
    const-string v2, "UMTS"

    .line 101
    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "http://os.baidu.com/theme"

    return-object v0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, isMobileConnected:Z
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 51
    .local v2, stateType:I
    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 56
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v2           #stateType:I
    :cond_0
    return v1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 18
    .local v1, networkAvailable:Z
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 20
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 25
    :cond_0
    return v1
.end method
