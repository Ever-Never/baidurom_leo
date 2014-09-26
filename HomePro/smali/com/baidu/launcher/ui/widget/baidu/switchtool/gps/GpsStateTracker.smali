.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "GpsStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 16
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 32
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 34
    .local v0, on:Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    const v0, 0x7f02018e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02018d

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0c01ec

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "aContext"
    .parameter "desiredState"

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1040

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method
