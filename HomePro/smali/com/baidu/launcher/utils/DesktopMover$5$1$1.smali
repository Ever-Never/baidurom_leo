.class Lcom/baidu/launcher/utils/DesktopMover$5$1$1;
.super Ljava/lang/Object;
.source "DesktopMover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/DesktopMover$5$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover$5$1;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    iget-object v4, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget v4, v4, Lcom/baidu/launcher/utils/DesktopMover$5$1;->val$select:I

    #calls: Lcom/baidu/launcher/utils/DesktopMover;->moveDesktop(I)I
    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/DesktopMover;->access$600(Lcom/baidu/launcher/utils/DesktopMover;I)I

    move-result v2

    .line 533
    .local v2, result:I
    const/4 v1, 0x0

    .line 534
    .local v1, msg:Landroid/os/Message;
    packed-switch v2, :pswitch_data_0

    .line 545
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    .end local v2           #result:I
    :goto_1
    return-void

    .line 536
    .restart local v2       #result:I
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 537
    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 540
    goto :goto_0

    .line 542
    :pswitch_2
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 546
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 548
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;->this$2:Lcom/baidu/launcher/utils/DesktopMover$5$1;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v3, v3, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/utils/DesktopMover;->access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
