.class Lcom/baidu/bulletin/BulletinService$ServiceSession$1;
.super Ljava/lang/Thread;
.source "BulletinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/BulletinService$ServiceSession;->start(Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/BulletinService$ServiceSession;

.field final synthetic val$session:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/BulletinService$ServiceSession;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->this$0:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    iput-object p2, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->val$session:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->this$0:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->this$0:Lcom/baidu/bulletin/BulletinService$ServiceSession;

    #getter for: Lcom/baidu/bulletin/BulletinService$ServiceSession;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->access$1200(Lcom/baidu/bulletin/BulletinService$ServiceSession;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->val$session:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    invoke-static {v1, v2}, Lcom/baidu/bulletin/SyncScheduler;->create(Landroid/content/Context;Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)Lcom/baidu/bulletin/SyncScheduler;

    move-result-object v1

    #setter for: Lcom/baidu/bulletin/BulletinService$ServiceSession;->mSyncScheduler:Lcom/baidu/bulletin/SyncScheduler;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->access$1102(Lcom/baidu/bulletin/BulletinService$ServiceSession;Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/SyncScheduler;

    .line 615
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$ServiceSession$1;->val$session:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    invoke-interface {v0}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onServiceStart()V

    .line 616
    return-void
.end method
