.class Lcom/baidu/launcher/ui/common/BaseAlertController$1;
.super Ljava/lang/Object;
.source "BaseAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/BaseAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/BaseAlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$000(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$100(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$100(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 140
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$700(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$600(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$200(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$300(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$300(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$400(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$500(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$1;->this$0:Lcom/baidu/launcher/ui/common/BaseAlertController;

    #getter for: Lcom/baidu/launcher/ui/common/BaseAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/baidu/launcher/ui/common/BaseAlertController;->access$500(Lcom/baidu/launcher/ui/common/BaseAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
