.class public Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 484
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0
.end method

.method public static getOutgoingRoute()Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;
    .locals 4

    .prologue
    .line 425
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network;->connectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 426
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectivityManager is not exsited!"

    invoke-static {v2, v3}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v2, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;

    .line 441
    :goto_0
    return-object v2

    .line 431
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 432
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 441
    :cond_1
    sget-object v2, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;

    goto :goto_0

    .line 435
    :pswitch_0
    sget-object v2, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;

    goto :goto_0

    .line 437
    :pswitch_1
    sget-object v2, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network$Type;

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNetworkAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network;->connectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 474
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 475
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager is not exsited!"

    invoke-static {v3, v4}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return v2

    .line 479
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 480
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
