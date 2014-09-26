.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;
.super Ljava/lang/Object;
.source "OptimizationUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerThreadRunnalbe"
.end annotation


# instance fields
.field private mRefHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepTimeMillsec:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mSleepTimeMillsec:J

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mRefHandler:Ljava/lang/ref/WeakReference;

    .line 115
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mRefHandler:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->access$100()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mRefHandler:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mRefHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mRefHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    const/16 v3, 0x2713

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 134
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mRefHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    :try_start_0
    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mSleepTimeMillsec:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    const-string v2, "OptimizationUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":TimerThread exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSleepTime(J)V
    .locals 0
    .parameter "ntimemillsec"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$TimerThreadRunnalbe;->mSleepTimeMillsec:J

    .line 124
    return-void
.end method
