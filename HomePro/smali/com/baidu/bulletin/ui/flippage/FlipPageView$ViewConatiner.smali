.class Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;
.super Landroid/view/ViewGroup;
.source "FlipPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/FlipPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewConatiner"
.end annotation


# static fields
.field private static final CACHE_COUNT:I = 0x2


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mCurrentIndex:I

.field private mCurrentView:Landroid/view/View;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/flippage/FlipPageView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    .line 274
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentIndex:I

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    .line 496
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner$1;-><init>(Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 275
    return-void
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;)Landroid/widget/Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method private cachePageView(ILandroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "view"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    return-void
.end method

.method private downloadPageImage(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 333
    const/4 v4, 0x1

    .line 335
    .local v4, isLoadedAllImagesInCurPage:Z
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/baidu/bulletin/BulletinPresentation;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    .line 336
    .local v2, channelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v2, :cond_0

    .line 337
    move-object v0, v2

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 338
    .local v1, channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItem;->isImgDownloaded()Z

    move-result v6

    and-int/2addr v4, v6

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #channelItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_0
    if-nez v4, :cond_1

    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    invoke-static {}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start download image in page index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/baidu/bulletin/BulletinPresentation;->downloadImgByPage(I)V

    .line 345
    :cond_1
    return-void
.end method

.method private getCacheBeginIndex()I
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCacheEndIndex()I
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private layoutEndPageView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEndPage:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$500(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEndPage:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$500(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->layoutView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private layoutView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/high16 v5, 0x4000

    const/4 v6, 0x0

    .line 436
    if-nez p1, :cond_0

    .line 450
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getWidth()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 441
    .local v3, widthSpec:I
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 444
    .local v2, heightSprc:I
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getWidth()I

    move-result v4

    invoke-static {v3, v6, v4}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getChildMeasureSpec(III)I

    move-result v1

    .line 445
    .local v1, childWidthSpec:I
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getHeight()I

    move-result v4

    invoke-static {v2, v6, v4}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getChildMeasureSpec(III)I

    move-result v0

    .line 446
    .local v0, childHeightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private loadViewToCache()V
    .locals 3

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCacheBeginIndex()I

    move-result v0

    .line 466
    .local v0, begin:I
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCacheEndIndex()I

    move-result v1

    .line 468
    .local v1, end:I
    move v2, v0

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 469
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getView(I)Landroid/view/View;

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_0
    return-void
.end method

.method private recycleCachedView()V
    .locals 6

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCacheBeginIndex()I

    move-result v0

    .line 475
    .local v0, begin:I
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCacheEndIndex()I

    move-result v1

    .line 477
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 478
    iget-object v5, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 479
    .local v3, key:I
    if-lt v3, v0, :cond_0

    if-le v3, v1, :cond_1

    .line 480
    :cond_0
    iget-object v5, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 481
    .local v4, recycled:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->removeView(Landroid/view/View;)V

    .line 482
    iget-object v5, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 477
    .end local v4           #recycled:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    .end local v3           #key:I
    :cond_2
    return-void
.end method

.method private refreshViewCache()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->recycleCachedView()V

    .line 461
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->loadViewToCache()V

    .line 462
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 425
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCount:I

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 385
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 402
    :cond_1
    :goto_0
    return-object v0

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 390
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 391
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-interface {v2, p1, v1, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_1

    .line 396
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->addView(Landroid/view/View;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->layoutView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->layoutView(Landroid/view/View;)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    #getter for: Lcom/baidu/bulletin/ui/flippage/FlipPageView;->mEndPage:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$500(Lcom/baidu/bulletin/ui/flippage/FlipPageView;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->layoutEndPageView(Landroid/view/View;)V

    .line 433
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_0
    return-void
.end method

.method public refreshView(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 373
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCount:I

    if-lt p1, v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->this$0:Lcom/baidu/bulletin/ui/flippage/FlipPageView;

    invoke-interface {v2, p1, v1, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->cachePageView(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->removeAllViews()V

    .line 280
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 285
    :cond_0
    iput v2, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCount:I

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentIndex:I

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 290
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    .line 291
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 293
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCount:I

    .line 294
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->setIndex(I)Z

    .line 296
    :cond_1
    return-void
.end method

.method public setIndex(I)Z
    .locals 6
    .parameter "index"

    .prologue
    .line 307
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 308
    invoke-static {}, Lcom/baidu/bulletin/ui/flippage/FlipPageView;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_0
    iput p1, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentIndex:I

    .line 315
    iget v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentIndex:I

    invoke-virtual {p0, v3}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->showCurrentView(I)V

    .line 317
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->refreshViewCache()V

    .line 319
    const/4 v1, 0x3

    .line 320
    .local v1, downloadPageImageCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 321
    iget v3, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentIndex:I

    add-int v0, v3, v2

    .line 323
    .local v0, downloadIndex:I
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->downloadPageImage(I)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v0           #downloadIndex:I
    :cond_1
    const/4 v3, 0x1

    .line 328
    .end local v1           #downloadPageImageCount:I
    .end local v2           #i:I
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setPageImages(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->refreshView(I)V

    .line 357
    return-void
.end method

.method public showCurrentView(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public syncCurrentPage()V
    .locals 3

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCacheBeginIndex()I

    move-result v0

    .line 361
    .local v0, begin:I
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->getCacheEndIndex()I

    move-result v1

    .line 362
    .local v1, end:I
    move v2, v0

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 363
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/flippage/FlipPageView$ViewConatiner;->refreshView(I)V

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method
