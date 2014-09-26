.class public Lcom/baidu/yi/sdk/cloudstorage/TaskThread;
.super Ljava/lang/Thread;
.source "TaskThread.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControl:I

.field private mInfo:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

.field private mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 0
    .parameter "context"
    .parameter "taskId"
    .parameter "info"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mTaskId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->dispatchFileRequest(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 33
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v1, v1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/TaskHandler;->dequeueTask(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public suspendThread(I)V
    .locals 3
    .parameter "control"

    .prologue
    .line 41
    iput p1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mControl:I

    .line 42
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mTaskId:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskThread;->mControl:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->suspendTask(Ljava/lang/String;I)V

    .line 43
    return-void
.end method
