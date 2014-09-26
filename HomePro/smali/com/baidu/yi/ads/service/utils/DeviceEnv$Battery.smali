.class public Lcom/baidu/yi/ads/service/utils/DeviceEnv$Battery;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/DeviceEnv;
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
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static batteryStatus()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 378
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryStatus is not exsited!"

    invoke-static {v2, v3}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v0, filter:Landroid/content/IntentFilter;
    :goto_0
    return-object v1

    .line 382
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 383
    .restart local v0       #filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPower()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Battery;->batteryStatus()Landroid/content/Intent;

    move-result-object v0

    .line 347
    .local v0, batteryStatus:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryStatus is not exsited!"

    invoke-static {v4, v5}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return v2

    .line 352
    :cond_0
    const-string v4, "level"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 353
    .local v1, level:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 354
    .local v3, scale:I
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "batterylevel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "batteryscale:scale"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/yi/ads/service/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    mul-int/lit8 v4, v1, 0x64

    div-int v2, v4, v3

    .line 357
    .local v2, percentage:I
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "batteryPct:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/yi/ads/service/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCharging()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 366
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Battery;->batteryStatus()Landroid/content/Intent;

    move-result-object v0

    .line 367
    .local v0, batteryStatus:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 368
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BatteryStatus is not exsited!"

    invoke-static {v3, v4}, Lcom/baidu/yi/ads/service/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    const-string v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 373
    .local v1, status:I
    const/4 v4, 0x2

    if-ne v4, v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isLow()Z
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Battery;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 339
    .local v0, powerLowPercent:I
    :goto_0
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Battery;->getPower()I

    move-result v1

    if-ge v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 338
    .end local v0           #powerLowPercent:I
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 339
    .restart local v0       #powerLowPercent:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
