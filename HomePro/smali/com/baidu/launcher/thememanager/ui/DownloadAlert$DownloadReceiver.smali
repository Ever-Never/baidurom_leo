.class Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/DownloadAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadReceiver"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadReceiver"


# instance fields
.field private mDownloadId:J

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 0
    .parameter "aHandler"
    .parameter "aDownloadId"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mHandler:Landroid/os/Handler;

    .line 157
    iput-wide p2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mDownloadId:J

    .line 158
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v11, 0x0

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    const-string v8, "extra_id"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 165
    .local v3, id:J
    iget-wide v8, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mDownloadId:J

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 166
    const-string v8, "com.baidu.launcher.download_progress"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    const-string v8, "extra_total"

    invoke-virtual {p2, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 168
    .local v6, total:J
    const-string v8, "extra_current"

    invoke-virtual {p2, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 169
    .local v1, current:J
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    long-to-int v11, v6

    long-to-int v12, v1

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    .end local v1           #current:J
    .end local v6           #total:J
    :cond_0
    const-string v8, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 173
    const-string v8, "extra_result"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 174
    .local v5, result:I
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    .end local v5           #result:I
    :cond_1
    return-void
.end method
