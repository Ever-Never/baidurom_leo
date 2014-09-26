.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/airplanemode/AirplaneModeStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "AirplaneModeStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 18
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/airplanemode/AirplaneModeStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, enable:I
    if-nez v1, :cond_0

    .line 40
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    const v0, 0x7f02018c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02018b

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0c01e9

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/airplanemode/AirplaneModeStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/airplanemode/AirplaneModeStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 74
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 47
    if-eqz p2, :cond_1

    move v1, v5

    .line 48
    .local v1, enable:I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJBMR1()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 51
    :try_start_0
    const-string v7, "android.provider.Settings$Global"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 52
    .local v2, global:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 53
    const-string v7, "putInt"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 54
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const-string v9, "airplane_mode_on"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "state"

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2           #global:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_2
    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #enable:I
    :cond_1
    move v1, v6

    .line 47
    goto :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #enable:I
    .restart local v2       #global:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v5, v6

    .line 56
    goto :goto_1

    .line 63
    .end local v2           #global:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_3
    const-string v7, "airplane_mode_on"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "state"

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    move v5, v6

    .line 65
    goto :goto_3

    .line 59
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
