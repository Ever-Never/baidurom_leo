.class public Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
.super Ljava/lang/Object;
.source "ImageScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageScrollListener"


# instance fields
.field private downPreLoadSize:I

.field private mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

.field private upPreLoadSize:I


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->upPreLoadSize:I

    .line 14
    iput v0, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->downPreLoadSize:I

    .line 17
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;II)V
    .locals 1
    .parameter "adapter"
    .parameter "upPreSize"
    .parameter "downPreSize"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->upPreLoadSize:I

    .line 14
    iput v0, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->downPreLoadSize:I

    .line 21
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 22
    iput p2, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->upPreLoadSize:I

    .line 23
    iput p3, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->downPreLoadSize:I

    .line 24
    return-void
.end method

.method private endPreImageLoad()I
    .locals 6

    .prologue
    .line 59
    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v5}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 60
    .local v0, end:I
    iget v5, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->downPreLoadSize:I

    add-int v4, v0, v5

    .line 61
    .local v4, preEnd:I
    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v5}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getCount()I

    move-result v1

    .line 62
    .local v1, endCount:I
    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v5}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 64
    .local v2, footCount:I
    sub-int v5, v1, v2

    if-le v4, v5, :cond_0

    .line 65
    sub-int v4, v1, v2

    .line 68
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .local v3, i:I
    :goto_0
    if-gt v3, v4, :cond_1

    .line 69
    iget-object v5, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v5, v3}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->preLoadImage(I)V

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sub-int v5, v1, v2

    if-ne v4, v5, :cond_2

    .line 73
    move v4, v1

    .line 75
    :cond_2
    return v4
.end method

.method private loadImage(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->setLoadLimit(II)V

    .line 31
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->unlock()V

    .line 32
    return-void
.end method

.method private startPreImageLoad()I
    .locals 4

    .prologue
    .line 43
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 44
    .local v2, start:I
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 45
    iget v3, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->upPreLoadSize:I

    sub-int v1, v2, v3

    .line 46
    .local v1, preStart:I
    if-gez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 50
    :cond_0
    move v0, v1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 51
    iget-object v3, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v3, v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->preLoadImage(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return v1
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 38
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 80
    packed-switch p2, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock()V

    .line 84
    const-string v2, "ImageScrollListener"

    const-string v3, "image lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->startPreImageLoad()I

    move-result v1

    .line 89
    .local v1, start:I
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->endPreImageLoad()I

    move-result v0

    .line 91
    .local v0, end:I
    invoke-direct {p0, v1, v0}, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->loadImage(II)V

    .line 92
    const-string v2, "ImageScrollListener"

    const-string v3, "image load"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v0           #end:I
    .end local v1           #start:I
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;->mAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock()V

    .line 97
    const-string v2, "ImageScrollListener"

    const-string v3, "image lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
