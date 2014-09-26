.class public Lcom/baidu/yi/ads/service/utils/DeviceEnv$LocationService;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static locationManager()Landroid/location/LocationManager;
    .locals 2

    .prologue
    .line 512
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    goto :goto_0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 7

    .prologue
    .line 499
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$LocationService;->locationManager()Landroid/location/LocationManager;

    move-result-object v1

    .line 500
    .local v1, locationManager:Landroid/location/LocationManager;
    if-nez v1, :cond_1

    .line 501
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManager is not exsited!"

    invoke-static {v3, v4}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    .line 508
    :cond_0
    :goto_0
    return-object v0

    .line 505
    :cond_1
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 506
    .local v0, gpsLocation:Landroid/location/Location;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 508
    .local v2, networkLocation:Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    move-object v0, v2

    goto :goto_0
.end method
