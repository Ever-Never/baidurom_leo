.class public Lyi/util/AppUpdateHelper$AppUpdateCheckTask;
.super Ljava/lang/Object;
.source "AppUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/util/AppUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppUpdateCheckTask"
.end annotation


# instance fields
.field private mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

.field private mListener:Lyi/util/AppUpdateHelper$UpdateListener;

.field private mUseAsyncTask:Z

.field final synthetic this$0:Lyi/util/AppUpdateHelper;


# direct methods
.method public constructor <init>(Lyi/util/AppUpdateHelper;ZLyi/util/AppUpdateHelper$UpdateListener;)V
    .locals 2
    .parameter
    .parameter "useAsyncTask"
    .parameter "listener"

    .prologue
    .line 291
    iput-object p1, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->this$0:Lyi/util/AppUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;-><init>(Z)V

    iput-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    .line 293
    iput-object p3, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;

    .line 294
    iput-boolean p2, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mUseAsyncTask:Z

    .line 295
    return-void
.end method

.method static synthetic access$0(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper$AppUpdateHttpClient;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    return-object v0
.end method

.method static synthetic access$1(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper$UpdateListener;
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;

    return-object v0
.end method

.method static synthetic access$2(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)Lyi/util/AppUpdateHelper;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->this$0:Lyi/util/AppUpdateHelper;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    invoke-virtual {v0}, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->cancel()V

    .line 338
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 302
    iget-boolean v2, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mUseAsyncTask:Z

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->this$0:Lyi/util/AppUpdateHelper;

    #getter for: Lyi/util/AppUpdateHelper;->isDebug:Z
    invoke-static {v2}, Lyi/util/AppUpdateHelper;->access$1(Lyi/util/AppUpdateHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const-string v2, "AppUpdateHelper"

    const-string v3, "Use async task"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    new-instance v1, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;

    iget-object v2, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->this$0:Lyi/util/AppUpdateHelper;

    iget-object v3, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    iget-object v4, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;

    invoke-direct {v1, v2, v3, v4}, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;-><init>(Lyi/util/AppUpdateHelper;Lyi/util/AppUpdateHelper$AppUpdateHttpClient;Lyi/util/AppUpdateHelper$UpdateListener;)V

    .line 307
    .local v1, task:Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    .end local v1           #task:Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v2, p0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->this$0:Lyi/util/AppUpdateHelper;

    #getter for: Lyi/util/AppUpdateHelper;->isDebug:Z
    invoke-static {v2}, Lyi/util/AppUpdateHelper;->access$1(Lyi/util/AppUpdateHelper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    const-string v2, "AppUpdateHelper"

    const-string v3, "Use normal thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    new-instance v0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;

    invoke-direct {v0, p0}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask$1;-><init>(Lyi/util/AppUpdateHelper$AppUpdateCheckTask;)V

    .line 325
    .local v0, t:Ljava/lang/Thread;
    const-string v2, "CheckTaskThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
