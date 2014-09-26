.class public Lcom/baidu/bulletin/utils/DeviceEnv$Battery;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Battery"
.end annotation


# static fields
.field static final POWER_LOW_PERCENT:I = 0x14

.field static final POWER_LOW_PERCENT_CHARGING:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static batteryStatus()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 272
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatus is not exsited!"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v0, filter:Landroid/content/IntentFilter;
    :goto_0
    return-object v1

    .line 276
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v0       #filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPower()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->batteryStatus()Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, batteryStatus:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatus is not exsited!"

    invoke-static {v4, v5}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return v2

    .line 246
    :cond_0
    const-string v4, "level"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, level:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 248
    .local v3, scale:I
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batterylevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "batteryscale:scale"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    mul-int/lit8 v4, v1, 0x64

    div-int v2, v4, v3

    .line 251
    .local v2, percentage:I
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryPct:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCharging()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->batteryStatus()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, batteryStatus:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryStatus is not exsited!"

    invoke-static {v2, v4}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return v3

    .line 266
    :cond_0
    const-string v4, "status"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, status:I
    const/4 v4, 0x2

    if-ne v4, v1, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static isLow()Z
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 233
    .local v0, powerLowPercent:I
    :goto_0
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->getPower()I

    move-result v1

    if-ge v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 232
    .end local v0           #powerLowPercent:I
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 233
    .restart local v0       #powerLowPercent:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
