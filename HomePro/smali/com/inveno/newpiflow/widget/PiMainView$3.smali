.class Lcom/inveno/newpiflow/widget/PiMainView$3;
.super Ljava/lang/Object;
.source "PiMainView.java"

# interfaces
.implements Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/widget/PiMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiMainView;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/PiMainView;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFooterPullToRefresh(Lcom/inveno/newpiflow/widget/PullToRefreshView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$300(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiMainView;->access$400(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getFooterState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->updateLoadMoreView(I)V

    .line 144
    return-void
.end method

.method public onFooterRefreshing(Lcom/inveno/newpiflow/widget/PullToRefreshView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$200(Lcom/inveno/newpiflow/widget/PiMainView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$200(Lcom/inveno/newpiflow/widget/PiMainView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02ed

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$300(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->updateLoadMoreView(I)V

    .line 134
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$400(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->onFooterRefreshComplete()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$300(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiMainView;->access$400(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getFooterState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->updateLoadMoreView(I)V

    .line 138
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$300(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->refreshData()V

    goto :goto_0
.end method

.method public onFooterReleaseToRefresh(Lcom/inveno/newpiflow/widget/PullToRefreshView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$300(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView$3;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiMainView;->access$400(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getFooterState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->updateLoadMoreView(I)V

    .line 149
    return-void
.end method
