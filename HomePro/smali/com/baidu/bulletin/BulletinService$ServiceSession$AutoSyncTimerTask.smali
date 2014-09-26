.class Lcom/baidu/bulletin/BulletinService$ServiceSession$AutoSyncTimerTask;
.super Ljava/util/TimerTask;
.source "BulletinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinService$ServiceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSyncTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/BulletinService$ServiceSession;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/BulletinService$ServiceSession;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$AutoSyncTimerTask;->this$0:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/BulletinService$ServiceSession;Lcom/baidu/bulletin/BulletinService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/BulletinService$ServiceSession$AutoSyncTimerTask;-><init>(Lcom/baidu/bulletin/BulletinService$ServiceSession;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 728
    const-string v1, "BulletinService"

    const-string v2, "autosync timer task is running."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Lcom/baidu/bulletin/autosync/AutoSyncer;->getInstance()Lcom/baidu/bulletin/autosync/AutoSyncer;

    move-result-object v0

    .line 732
    .local v0, autoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->sync()V

    .line 735
    :cond_0
    return-void
.end method
