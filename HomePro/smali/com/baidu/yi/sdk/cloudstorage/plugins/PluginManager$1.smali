.class Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;
.super Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleDownloadFile(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

.field private final synthetic val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;


# direct methods
.method constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    .line 458
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 10
    .parameter "transferred"
    .parameter "total"

    .prologue
    .line 462
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download progress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 463
    const-string v2, "bytes of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iput-wide p1, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCurrentBytes:J

    .line 465
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iput-wide p3, v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTotalBytes:J

    .line 466
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    .line 467
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v1, v1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 468
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v3, v3, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    .line 469
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v4, v4, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager$1;->val$task:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    iget-object v5, v5, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    move-wide v6, p1

    move-wide v8, p3

    .line 467
    invoke-static/range {v0 .. v9}, Lcom/baidu/yi/sdk/cloudstorage/utils/BroadCastUtil;->notifyProgress(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 471
    return-void
.end method
