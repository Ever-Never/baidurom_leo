.class Lcom/android/systemui/recent/ClearView$2;
.super Landroid/os/AsyncTask;
.source "ClearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/ClearView;->clearAllProcessInBackground(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/ClearView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ClearView;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView$2;->this$0:Lcom/android/systemui/recent/ClearView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/ClearView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 154
    .local v4, origPri:I
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 155
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView$2;->this$0:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$300(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentTasksLoader;->getAppInfoMap()Ljava/util/Map;

    move-result-object v1

    .line 157
    .local v1, appMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-object v7

    .line 159
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 161
    .local v2, appSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 162
    .local v5, packageName:Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 163
    .local v0, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    if-eqz v0, :cond_1

    iget-boolean v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-nez v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView$2;->this$0:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$400(Lcom/android/systemui/recent/ClearView;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v0           #appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 171
    :goto_2
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 167
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView$2;->this$0:Lcom/android/systemui/recent/ClearView;

    #getter for: Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$400(Lcom/android/systemui/recent/ClearView;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListApp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/ClearView$2;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 178
    return-void
.end method
