.class Lcom/baidu/bulletin/BulletinPresentation$1;
.super Ljava/lang/Object;
.source "BulletinPresentation.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/BulletinPresentation;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/BulletinPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation$1;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$1;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    check-cast p2, Lcom/baidu/bulletin/BulletinService$ServiceSession;

    .end local p2
    #setter for: Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;
    invoke-static {v0, p2}, Lcom/baidu/bulletin/BulletinPresentation;->access$102(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/BulletinService$ServiceSession;)Lcom/baidu/bulletin/BulletinService$ServiceSession;

    .line 59
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$1;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinPresentation;->access$100(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinService$ServiceSession;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$1;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation;->mThreadSwitcher:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation;->access$200(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->start(Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V

    .line 60
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$1;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinPresentation;->access$100(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinService$ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->startAutoSyncTimer()V

    .line 61
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$1;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/BulletinPresentation;->access$102(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/BulletinService$ServiceSession;)Lcom/baidu/bulletin/BulletinService$ServiceSession;

    .line 66
    return-void
.end method
