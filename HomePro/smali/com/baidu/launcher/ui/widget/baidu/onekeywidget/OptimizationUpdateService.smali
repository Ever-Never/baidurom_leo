.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;
.super Landroid/app/Service;
.source "OptimizationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;
    }
.end annotation


# static fields
.field private static final DEFAULT_MEMORY_FREE_SIZE:I = 0x32

.field private static final DEFAULT_MEMORY_USED_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "OptimizationUpdateService"

.field private static sThreadExit:Z


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mMemoryFreeSize:I

.field private mMemoryUsedSize:I

.field private mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTimerThread:Ljava/lang/Thread;

.field private mTimerThreadRunnalbe:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->sThreadExit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x32

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryFreeSize:I

    .line 27
    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryUsedSize:I

    .line 35
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mHandler:Landroid/os/Handler;

    .line 188
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->updateData()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->sThreadExit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->exitTimerThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->startTimerThread()V

    return-void
.end method

.method private declared-synchronized exitTimerThread()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->sThreadExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTimerThread()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 81
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->sThreadExit:Z

    .line 84
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    :cond_0
    const-string v1, "OptimizationUpdateService"

    const-string v2, "restart mTimerThread"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThreadRunnalbe:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThreadRunnalbe:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;

    .line 89
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThreadRunnalbe:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->setSleepTime(J)V

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThreadRunnalbe:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThread:Ljava/lang/Thread;

    .line 94
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mTimerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_2
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OptimizationUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restart thread failed..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateData()V
    .locals 8

    .prologue
    .line 157
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryFreeSize:I

    .line 158
    .local v4, oldFree:I
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryUsedSize:I

    .line 159
    .local v5, oldUsed:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v6

    long-to-int v3, v6

    .line 160
    .local v3, memoryTotalSize:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryFreeSize:I

    .line 161
    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryFreeSize:I

    sub-int v6, v3, v6

    iput v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryUsedSize:I

    .line 164
    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryFreeSize:I

    if-eq v4, v6, :cond_0

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryUsedSize:I

    if-ne v5, v6, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "com.baidu.launcher.memoryFreeSize"

    iget v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryFreeSize:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v6, "com.baidu.launcher.memoryUsedSize"

    iget v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mMemoryUsedSize:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.baidu.launcher.action.UPDATE_WIDGET"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.baidu.launcher.memoryInfo"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    const-string v6, "ID"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.baidu.launcher.action.UPDATE_WIDGET"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, intent2:Landroid/content/Intent;
    const-string v6, "com.baidu.launcher.memoryInfo"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    const-string v6, "ID"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    .line 59
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->setServiceAlived(Z)V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, receiverFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 205
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 206
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->exitTimerThread()V

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->setServiceAlived(Z)V

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 210
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 69
    const-string v0, "OptimizationUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on start,intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->startTimerThread()V

    .line 71
    const/4 v0, 0x1

    return v0
.end method
