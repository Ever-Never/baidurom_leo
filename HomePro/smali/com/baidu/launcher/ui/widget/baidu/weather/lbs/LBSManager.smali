.class public Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;
.super Ljava/lang/Object;
.source "LBSManager.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LBSManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

.field private mLocationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;)V
    .locals 4
    .parameter "aContext"
    .parameter "aLBSListener"

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    .line 34
    new-instance v1, Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 35
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 37
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 38
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 39
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 40
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->disableCache(Z)V

    .line 41
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPoiNumber(I)V

    .line 42
    const/high16 v1, 0x447a

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPoiDistance(F)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPriority(I)V

    .line 44
    const-string v1, "BaiduHome2"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setProdName(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getLBSListener()Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    return-object v0
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 69
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LBSManager:onReceiveLocation:location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-nez p1, :cond_1

    .line 72
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    invoke-interface {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;->onAutoLocationFail()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 79
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "time : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v3, "\nlatitude : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 83
    const-string v3, "\nlontitude : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 85
    const-string v3, "\nradius : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    .line 89
    const-string v3, "\nspeed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 91
    const-string v3, "\nsatellite : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSatelliteNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 97
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nProvince : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nDistrict : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCityCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCityCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    .line 103
    .local v0, errorCode:I
    const-string v3, "\nerror code : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 106
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LBSManager:onReceiveLocation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sparse-switch v0, :sswitch_data_0

    .line 120
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, tempLocation:Landroid/location/Location;
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 122
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 124
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    invoke-interface {v3, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;->onLocationChanged(Landroid/location/Location;)V

    goto/16 :goto_0

    .line 93
    .end local v0           #errorCode:I
    .end local v2           #tempLocation:Landroid/location/Location;
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_2

    .line 94
    const-string v3, "\naddr : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 115
    .restart local v0       #errorCode:I
    :sswitch_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    invoke-interface {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;->onAutoLocationFail()V

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0xa7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 4
    .parameter "poiLocation"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 137
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "Poi time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "\nerror code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "\nlatitude : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 143
    const-string v1, "\nlontitude : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, "\nradius : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_1

    .line 149
    const-string v1, "\naddr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasPoi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string v1, "\nPoi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :goto_1
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_2
    const-string v1, "noPoi information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    .line 175
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 177
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 179
    :cond_0
    return-void
.end method

.method public setLBSListener(Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;)V
    .locals 0
    .parameter "aLBSListener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLBSListener:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;

    .line 170
    return-void
.end method

.method public startListenLocation()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "###"

    const-string v1, "LBSManager:startListenLocation"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 57
    return-void
.end method

.method public stopListenLocation()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "###"

    const-string v1, "LBSManager:stopListenLocation"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 65
    :cond_0
    return-void
.end method
