.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;
.super Ljava/lang/Object;
.source "WrapperConvenientOptimization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanOneAppRunnable"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mToCleanApp:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Landroid/os/Handler;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mToCleanApp:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 162
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mToCleanApp:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x2711

    .line 168
    const-string v4, "WrapperConvenientOptimization"

    const-string v5, "cleanOneAppRunnable run"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 172
    .local v2, t1:J
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mToCleanApp:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->cleanApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    .line 173
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mToCleanApp:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 181
    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 182
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :goto_0
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanOneAppRunnalbe over spend time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 175
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mYiProcessManager.cleanOneAppRunnable exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 181
    .restart local v1       #msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 182
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 181
    .restart local v1       #msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 182
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    throw v4
.end method
