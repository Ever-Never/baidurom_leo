.class Lcom/baidu/bulletin/utils/AppDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/AppDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/AppDownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$1;->this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    const-string v8, "AppDownloadManager"

    const-string v9, "receive DownloadManager.ACTION_DOWNLOAD_COMPLETE"

    invoke-static {v8, v9}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v8, "extra_download_id"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 160
    .local v2, downId:J
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$1;->this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;

    #getter for: Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/bulletin/utils/AppDownloadManager;->access$100(Lcom/baidu/bulletin/utils/AppDownloadManager;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 161
    :try_start_0
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$1;->this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;

    #getter for: Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/bulletin/utils/AppDownloadManager;->access$100(Lcom/baidu/bulletin/utils/AppDownloadManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;

    .line 162
    .local v5, task:Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    #getter for: Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mId:J
    invoke-static {v5}, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->access$200(Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;)J

    move-result-wide v10

    cmp-long v8, v10, v2

    if-nez v8, :cond_0

    .line 163
    #getter for: Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mPkgName:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->access$000(Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, destFile:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "-tmp"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, tempFile:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v7, tempPkg:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 167
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$1;->this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;

    #getter for: Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;
    invoke-static {v8}, Lcom/baidu/bulletin/utils/AppDownloadManager;->access$100(Lcom/baidu/bulletin/utils/AppDownloadManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager$1;->this$0:Lcom/baidu/bulletin/utils/AppDownloadManager;

    #calls: Lcom/baidu/bulletin/utils/AppDownloadManager;->installApp(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v8, p1, v1}, Lcom/baidu/bulletin/utils/AppDownloadManager;->access$300(Lcom/baidu/bulletin/utils/AppDownloadManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    monitor-exit v9

    .line 174
    .end local v1           #destFile:Ljava/lang/String;
    .end local v2           #downId:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #task:Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    .end local v6           #tempFile:Ljava/lang/String;
    .end local v7           #tempPkg:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 172
    .restart local v2       #downId:J
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v9

    goto :goto_0

    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method
