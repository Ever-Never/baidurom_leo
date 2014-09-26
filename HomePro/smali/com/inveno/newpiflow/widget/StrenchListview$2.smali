.class Lcom/inveno/newpiflow/widget/StrenchListview$2;
.super Landroid/os/Handler;
.source "StrenchListview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/widget/StrenchListview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/StrenchListview;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/StrenchListview;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$300(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$400(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$500(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$600(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$300(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$400(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$500(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$600(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 175
    :sswitch_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$300(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$400(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$500(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$600(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$300(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$400(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mNoConnBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$500(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$2;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mWaiting:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$600(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
