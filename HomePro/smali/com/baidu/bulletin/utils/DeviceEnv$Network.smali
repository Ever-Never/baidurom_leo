.class public Lcom/baidu/bulletin/utils/DeviceEnv$Network;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0
.end method

.method public static getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->connectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 290
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectivityManager is not exsited!"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    .line 305
    :goto_0
    return-object v2

    .line 295
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 296
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 305
    :cond_1
    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    goto :goto_0

    .line 299
    :pswitch_0
    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    goto :goto_0

    .line 301
    :pswitch_1
    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showNetworkSetting(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030132

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 310
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c024c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 311
    const v2, 0x7f0c024f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 312
    const v2, 0x7f0c024e

    new-instance v3, Lcom/baidu/bulletin/utils/DeviceEnv$Network$1;

    invoke-direct {v3, p0}, Lcom/baidu/bulletin/utils/DeviceEnv$Network$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    const v2, 0x7f0c024d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 322
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 323
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 325
    const-string v2, "checknet"

    const-string v3, "network is error"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method
