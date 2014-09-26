.class public Lcom/baidu/bulletin/ui/detail/AppDetailContentView;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/IDetailContentView;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;,
        Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppDetailContentView"


# instance fields
.field private imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field private mAppListAdapter:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;

.field private mApplistCallback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

.field private mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

.field private mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

.field private mContainerViewGroup:Landroid/view/ViewGroup;

.field private mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/baidu/bulletin/DataManager;

.field private mFailedButton:Landroid/widget/Button;

.field private mFailedLayout:Landroid/widget/RelativeLayout;

.field private mFailedTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field private mNoSdcardDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "containerGroup"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mHandler:Landroid/os/Handler;

    .line 443
    new-instance v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$3;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 466
    new-instance v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mApplistCallback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    .line 77
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 78
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mDataManager:Lcom/baidu/bulletin/DataManager;

    .line 80
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    .line 81
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 82
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public generateEmptyView()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 397
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 399
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v0, v1, :cond_1

    .line 400
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0241

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedButton:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$1;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V

    .line 431
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0224

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0260

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedButton:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$2;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getContentListener()Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedLayout:Landroid/widget/RelativeLayout;

    .line 95
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedTextView:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mFailedButton:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mListView:Landroid/widget/ListView;

    .line 99
    new-instance v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAppListAdapter:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;

    .line 100
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAppListAdapter:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 110
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 509
    sget-object v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v2, p1, :cond_1

    .line 510
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 513
    .local v1, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-virtual {v2, v1, v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_0

    .line 515
    .end local v1           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 520
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;)V
    .locals 0
    .parameter "contentListener"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    .line 381
    return-void
.end method

.method public updateAppContent(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 434
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 435
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAppListAdapter:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->update(Ljava/util/List;)V

    .line 438
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentListener;->onContentUpdateFinish(Lcom/baidu/bulletin/ui/detail/IDetailContentView;Z)V

    .line 441
    :cond_0
    return-void
.end method

.method public updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 503
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mDataManager:Lcom/baidu/bulletin/DataManager;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mApplistCallback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/bulletin/DataManager;->requestApplist(Lcom/baidu/bulletin/RequestCallback$ApplistCallback;Ljava/lang/String;J)V

    .line 505
    return-void
.end method

.method public updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 0
    .parameter "opItemInfo"

    .prologue
    .line 526
    return-void
.end method
