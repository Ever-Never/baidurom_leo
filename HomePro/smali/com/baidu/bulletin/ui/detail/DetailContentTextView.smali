.class public Lcom/baidu/bulletin/ui/detail/DetailContentTextView;
.super Ljava/lang/Object;
.source "DetailContentTextView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/IDetailContentView;
.implements Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;


# instance fields
.field private mAdapter:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

.field private mContainerViewGroup:Landroid/view/ViewGroup;

.field private mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

.field private mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

.field private ubcStartReadTime:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "containerGroup"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    .line 31
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 32
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .prologue
    .line 53
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->ubcStartReadTime:I

    sub-int v0, v1, v2

    .line 57
    .local v0, diffReadTime:I
    const/16 v1, 0xb4

    if-gt v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-static {v1}, Lcom/baidu/bulletin/utils/BulletinUBC;->ChannelIdToType(I)B

    move-result v1

    invoke-static {v1, v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForReadNewsIntervalTime(BI)V

    .line 62
    :cond_0
    return-void
.end method

.method public getContentListener()Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->ubcStartReadTime:I

    .line 38
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030028

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mLayout:Landroid/widget/LinearLayout;

    .line 42
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/detail/ViewFlow;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    .line 43
    new-instance v1, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;-><init>(Landroid/view/ViewGroup;Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mAdapter:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    .line 44
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 49
    return-void
.end method

.method public onContentRefreshFinish(Z)V
    .locals 1
    .parameter "isLoaded"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public onContentRefreshStart(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateStart(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onDetailItemChanged(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onChannelItemChanged(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;)V
    .locals 1
    .parameter "contentListener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    .line 85
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mAdapter:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;)V

    .line 86
    return-void
.end method

.method public updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 67
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mAdapter:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getInstance()Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 70
    return-void
.end method

.method public updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 1
    .parameter "opItemInfo"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentTextView;->mAdapter:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V

    .line 91
    return-void
.end method
