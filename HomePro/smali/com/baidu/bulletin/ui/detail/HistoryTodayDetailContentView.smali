.class public Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;
.super Ljava/lang/Object;
.source "HistoryTodayDetailContentView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/IDetailContentView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;
    }
.end annotation


# static fields
.field public static final SEMI_VIEW_SEARCH_TYPE_BAIKE:I = 0x3

.field public static final SEMI_VIEW_SEARCH_TYPE_SEARCH:I = 0x5


# instance fields
.field private mContainerViewGroup:Landroid/view/ViewGroup;

.field private mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

.field private mContext:Landroid/content/Context;

.field private mFootView:Landroid/view/View;

.field private mHistoryTodayListAdapter:Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;

.field private mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field private mOpTextView:Landroid/widget/TextView;

.field private mOpView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "containerGroup"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->initSemiViewInstalled(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public getContentListener()Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    .line 63
    const v1, 0x7f030030

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mFootView:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mFootView:Landroid/view/View;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpView:Landroid/widget/RelativeLayout;

    .line 65
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpTextView:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0800a8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mListView:Landroid/widget/ListView;

    .line 67
    new-instance v1, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;

    invoke-direct {v1, p0, v3}, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;-><init>(Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$1;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mHistoryTodayListAdapter:Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;

    .line 68
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mHistoryTodayListAdapter:Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 73
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 80
    return-void
.end method

.method public setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;)V
    .locals 0
    .parameter "contentListener"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    .line 250
    return-void
.end method

.method public updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 255
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 256
    new-instance v0, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mHistoryTodayListAdapter:Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;

    invoke-interface {v0}, Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;->get()[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$HistoryTodayListAdapter;->update([Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)V

    .line 258
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V

    .line 267
    .end local v0           #historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V

    goto :goto_0
.end method

.method public updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 4
    .parameter "opItemInfo"

    .prologue
    const/16 v3, 0x8

    .line 271
    if-eqz p1, :cond_1

    .line 274
    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, downloadUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 276
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    .line 277
    .local v0, downloadText:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView$1;-><init>(Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .end local v0           #downloadText:Ljava/lang/String;
    .end local v1           #downloadUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 292
    .restart local v1       #downloadUrl:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 295
    .end local v1           #downloadUrl:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayDetailContentView;->mOpView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
