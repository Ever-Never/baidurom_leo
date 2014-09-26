.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;
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
    name = "CleanAllAppsRunnable"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    .line 253
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    .line 254
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x2710

    .line 258
    const-string v8, "WrapperConvenientOptimization"

    const-string v9, "cleanAllAppsRunnable run"

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 260
    .local v6, t1:J
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->updateApplistOfProcessManager()V
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$500(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)V

    .line 263
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    const/4 v9, 0x0

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;I)I

    .line 266
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, imeInfo:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 268
    .local v4, imePackage:Ljava/lang/String;
    const-string v8, "WrapperConvenientOptimization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "system\'s default ime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 274
    .local v0, app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    iget-object v8, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 278
    iget-boolean v8, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_0

    .line 280
    :try_start_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->cleanApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    .line 281
    const-wide/16 v8, 0x0

    iget-wide v10, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-wide v9, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    invoke-static {v8, v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$614(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 289
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #imeInfo:Ljava/lang/String;
    .end local v4           #imePackage:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 290
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "WrapperConvenientOptimization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mYiProcessManager.cleanAllAppsRunnable exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)I

    move-result v9

    ushr-int/lit8 v9, v9, 0x14

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;I)I

    .line 294
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 295
    .local v5, msg:Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 296
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->updateApplistOfProcessManager()V
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$500(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)V

    .line 300
    const-string v8, "WrapperConvenientOptimization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cleanAllAppsRunnable over time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 293
    .end local v5           #msg:Landroid/os/Message;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #imeInfo:Ljava/lang/String;
    .restart local v4       #imePackage:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)I

    move-result v9

    ushr-int/lit8 v9, v9, 0x14

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;I)I

    .line 294
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 295
    .restart local v5       #msg:Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 296
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 293
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #imeInfo:Ljava/lang/String;
    .end local v4           #imePackage:Ljava/lang/String;
    .end local v5           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v10}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)I

    move-result v10

    ushr-int/lit8 v10, v10, 0x14

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I
    invoke-static {v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;I)I

    .line 294
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 295
    .restart local v5       #msg:Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 296
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    throw v8
.end method
