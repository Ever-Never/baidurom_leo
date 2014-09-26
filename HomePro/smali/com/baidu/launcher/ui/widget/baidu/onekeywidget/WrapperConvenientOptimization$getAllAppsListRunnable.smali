.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;
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
    name = "getAllAppsListRunnable"
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
    .line 107
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->mHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 113
    const-string v7, "WrapperConvenientOptimization"

    const-string v8, "getAllAppsListRunnable run"

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 117
    .local v5, startTime:J
    :try_start_0
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v8

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$002(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 123
    const-string v7, "WrapperConvenientOptimization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAllAppsList size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, itemWrapperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 127
    .local v0, app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    const-string v7, "WrapperConvenientOptimization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app packege name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " app lock state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v7, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.baidu.launcher"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->lockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    .line 131
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    invoke-static {v7, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$202(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    goto :goto_1

    .line 118
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #itemWrapperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "WrapperConvenientOptimization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "YiProcessManager.getCleanableApps exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #itemWrapperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    :cond_0
    iget-object v7, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->lockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    goto :goto_1

    .line 139
    :cond_1
    new-instance v7, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {v7, v8, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 142
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    :cond_2
    const-string v7, "WrapperConvenientOptimization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "itemWrapperList size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 144
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;
    invoke-static {v7, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->access$302(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 147
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #itemWrapperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    :cond_3
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2712

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 148
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    const-string v7, "WrapperConvenientOptimization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllAppsListRunnable spend time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
