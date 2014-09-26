.class Lcom/baidu/launcher/utils/DesktopMover$2;
.super Ljava/lang/Object;
.source "DesktopMover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/DesktopMover;->checkDesktopMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/DesktopMover;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$2;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover$2;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #calls: Lcom/baidu/launcher/utils/DesktopMover;->getDesktopsMoveable()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/utils/DesktopMover;->access$400(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    .line 127
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover$2;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover$2;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method
