.class Lcom/inveno/newpiflow/widget/PiScrollView$1;
.super Ljava/lang/Object;
.source "PiScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/PiScrollView;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiScrollView;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/PiScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$1;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$1;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$200(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/PiMainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiMainView;->getPullRefreshView()Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v0

    .line 486
    .local v0, pullView:Lcom/inveno/newpiflow/widget/PullToRefreshView;
    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getFooterState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->onFooterRefreshComplete()V

    .line 488
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$1;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/widget/StrenchListview;->updateLoadMoreView(I)V

    .line 489
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$1;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$600(Lcom/inveno/newpiflow/widget/PiScrollView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02fc

    invoke-static {v1, v2}, Lcom/inveno/newpiflow/tools/ToastTools;->showToast(Landroid/content/Context;I)V

    .line 491
    :cond_0
    return-void
.end method
