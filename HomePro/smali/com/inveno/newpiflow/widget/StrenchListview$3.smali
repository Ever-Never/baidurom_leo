.class Lcom/inveno/newpiflow/widget/StrenchListview$3;
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
    .line 231
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview$3;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "paramMessage"

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$3;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #setter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDrawing:Z
    invoke-static {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$102(Lcom/inveno/newpiflow/widget/StrenchListview;Z)Z

    .line 234
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$3;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mRemoveChild:Landroid/os/Handler;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$700(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method
