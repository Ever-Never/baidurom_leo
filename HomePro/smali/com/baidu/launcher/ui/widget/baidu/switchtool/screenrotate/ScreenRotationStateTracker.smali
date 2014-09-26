.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "ScreenRotationStateTracker.java"


# static fields
.field private static final SCREENROTATION_INFORM_UPDATE:Ljava/lang/String; = "com.baidu.launcher.screenrotation"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 17
    const-string v0, "com.baidu.launcher.screenrotation"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 19
    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;->registerObserverUri(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, rotateMode:I
    if-ne v1, v2, :cond_0

    .line 41
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 23
    if-eqz p1, :cond_0

    const v0, 0x7f020193

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020192

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0c01ed

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 55
    .local v2, rotateMode:I
    :goto_0
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.baidu.launcher.screenrotation"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void

    .line 53
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #rotateMode:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
