.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
.super Ljava/lang/Object;
.source "WrapperConvenientOptimization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;
    }
.end annotation


# static fields
.field private static final OPTIMIZATION_WAIT_SEC:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "WrapperConvenientOptimization"

.field private static sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;


# instance fields
.field private isServiceAlived:Z

.field private volatile isSystemClean:Z

.field private mAllAppWrappersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

.field private mContext:Landroid/content/Context;

.field private mPubFreeMem:I

.field private mPubUsedMem:I

.field private mReleasedSize:I

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 34
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isServiceAlived:Z

    .line 35
    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I

    .line 37
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mPubFreeMem:I

    .line 38
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mPubUsedMem:I

    .line 43
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean:Z

    .line 47
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Worker Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    .line 54
    const-string v0, "WrapperConvenientOptimization"

    const-string v1, "create"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->updateApplistOfProcessManager()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I

    return p1
.end method

.method static synthetic access$614(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;J)I
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    .line 61
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->sSingleInstance:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateApplistOfProcessManager()V
    .locals 7

    .prologue
    .line 205
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 216
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllAppsList size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v3, itemwrapperlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 221
    .local v0, app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app packege name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " app lock state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v4, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.baidu.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->lockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    .line 233
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    goto :goto_1

    .line 206
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #itemwrapperlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    :catch_0
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WrapperConvenientOptimization"

    const-string v5, "mYiProcessManager.getCleanableApps NullPointerException"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mYiProcessManager.getCleanableApps exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #itemwrapperlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    :cond_0
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;

    invoke-direct {v4, p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    :cond_1
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemwrapperlist size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 244
    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;

    .line 246
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #itemwrapperlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanAllApps(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanAllAppsRunnable;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanOneApp(Landroid/os/Handler;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V
    .locals 3
    .parameter "rsphandler"
    .parameter "item"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$CleanOneAppRunnable;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Landroid/os/Handler;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->access$400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAllAppWrappersList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppslistFromProcessManager(Landroid/os/Handler;)V
    .locals 2
    .parameter "aHandler"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$getAllAppsListRunnable;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMemFreeSize()J
    .locals 8

    .prologue
    .line 351
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getMemFreeSize()J

    move-result-wide v2

    .line 353
    .local v2, nbytes:J
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    if-eqz v4, :cond_0

    .line 354
    const-string v4, "WrapperConvenientOptimization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMemFreeSize mAppMyself mSize nbytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v6, v6, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mAppMyself:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v4, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    add-long/2addr v2, v4

    .line 358
    :cond_0
    const/16 v4, 0x14

    ushr-long v0, v2, v4

    .line 359
    .local v0, nMbytes:J
    return-wide v0
.end method

.method public getMemTotalSize()J
    .locals 5

    .prologue
    .line 337
    const-wide/16 v2, 0x0

    .line 338
    .local v2, nbytes:J
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    if-eqz v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getMemTotalSize()J

    move-result-wide v2

    .line 345
    :cond_0
    const/16 v4, 0x14

    ushr-long v0, v2, v4

    .line 347
    .local v0, nMbytes:J
    return-wide v0
.end method

.method public getReleasedSize()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mReleasedSize:I

    return v0
.end method

.method public isServiceAlived()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isServiceAlived:Z

    return v0
.end method

.method public isSystemClean()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean:Z

    return v0
.end method

.method public declared-synchronized lockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->lockApp(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    .line 318
    const-string v0, "WrapperConvenientOptimization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " app.mPackageInfo.packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  func lockApp lockstate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetSystemCleanDelayed()V
    .locals 4

    .prologue
    .line 383
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isSystemClean:Z

    .line 384
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveLockApps()V
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->saveLockedApps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setServiceAlived(Z)V
    .locals 0
    .parameter "isServiceAlived"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->isServiceAlived:Z

    .line 368
    return-void
.end method

.method public sortAppsList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, appslist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public declared-synchronized unlockApp(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->mYiProcessManager:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->unlockApp(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    .line 327
    const-string v0, "WrapperConvenientOptimization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " app.mPackageInfo.packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  func unlockApp lockstate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
