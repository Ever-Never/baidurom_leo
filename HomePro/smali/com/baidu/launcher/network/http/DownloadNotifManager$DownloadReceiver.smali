.class Lcom/baidu/launcher/network/http/DownloadNotifManager$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadNotifManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/DownloadNotifManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadReceiver"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadReceiver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v11, 0x0

    const-wide/16 v9, -0x1

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, action:Ljava/lang/String;
    const-string v0, "extra_id"

    invoke-virtual {p2, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 77
    .local v1, id:J
    cmp-long v0, v1, v9

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "com.baidu.launcher.download_progress"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "extra_total"

    invoke-virtual {p2, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 80
    .local v3, total:J
    const-string v0, "extra_current"

    invoke-virtual {p2, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 82
    .local v5, current:J
    invoke-static {p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateProgressNotification(JJJ)V

    .line 86
    .end local v3           #total:J
    .end local v5           #current:J
    :cond_0
    const-string v0, "com.baidu.launcher.download_completed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "extra_result"

    const/4 v9, -0x1

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 88
    .local v8, result:I
    invoke-static {p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateCompletedNotification(JI)V

    .line 93
    .end local v8           #result:I
    :cond_1
    return-void
.end method
