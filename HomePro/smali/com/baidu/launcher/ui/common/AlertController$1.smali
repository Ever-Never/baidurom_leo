.class Lcom/baidu/launcher/ui/common/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/AlertController;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/AlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$000(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$100(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$100(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 98
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$700(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/baidu/launcher/ui/common/AlertController;->access$600(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$200(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$300(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$300(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$400(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$500(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertController$1;->this$0:Lcom/baidu/launcher/ui/common/AlertController;

    #getter for: Lcom/baidu/launcher/ui/common/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/AlertController;->access$500(Lcom/baidu/launcher/ui/common/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
