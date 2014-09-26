.class public Lcom/inveno/newpiflow/widget/PullToRefreshView;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/widget/PullToRefreshView$OnHeaderRefreshListener;,
        Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;
    }
.end annotation


# static fields
.field public static final PULL_DOWN_STATE:I = 0x1

.field public static final PULL_TO_REFRESH:I = 0x2

.field public static final PULL_UP_STATE:I = 0x0

.field public static final REFRESHING:I = 0x4

.field public static final RELEASE_TO_REFRESH:I = 0x3


# instance fields
.field private mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mFooterImageView:Landroid/widget/ImageView;

.field private mFooterProgressBar:Landroid/widget/ProgressBar;

.field private mFooterState:I

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mFooterViewHeight:I

.field private mHeaderImageView:Landroid/widget/ImageView;

.field private mHeaderProgressBar:Landroid/widget/ProgressBar;

.field private mHeaderState:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderUpdateTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

.field private mOnHeaderRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnHeaderRefreshListener;

.field private mPullState:I

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->init()V

    .line 134
    return-void
.end method

.method private addFooterView()V
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterView:Landroid/view/View;

    .line 202
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->measureView(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterViewHeight:I

    .line 204
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    .line 181
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->measureView(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    .line 183
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 188
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method

.method private changingHeaderViewTopMargin(I)I
    .locals 5
    .parameter "deltaY"

    .prologue
    .line 485
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 486
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 489
    .local v0, newTopMargin:F
    if-lez p1, :cond_0

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    if-nez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    if-gt v2, v3, :cond_0

    .line 490
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 499
    :goto_0
    return v2

    .line 493
    :cond_0
    if-gez p1, :cond_1

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    if-lt v2, v3, :cond_1

    .line 494
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 496
    :cond_1
    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 497
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->invalidate()V

    .line 499
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private footerPrepareToRefresh(I)V
    .locals 5
    .parameter "deltaY"

    .prologue
    const/4 v4, 0x3

    .line 455
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    .line 458
    .local v0, newTopMargin:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x32

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    if-eq v1, v4, :cond_1

    .line 464
    iput v4, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    .line 465
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    invoke-interface {v1, p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;->onFooterReleaseToRefresh(Lcom/inveno/newpiflow/widget/PullToRefreshView;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x32

    if-ge v1, v2, :cond_0

    .line 472
    const/4 v1, 0x2

    iput v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    .line 473
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    invoke-interface {v1, p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;->onFooterPullToRefresh(Lcom/inveno/newpiflow/widget/PullToRefreshView;)V

    goto :goto_0
.end method

.method private footerRefreshing()V
    .locals 3

    .prologue
    .line 524
    const/4 v1, 0x4

    iput v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    .line 525
    iget v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterViewHeight:I

    add-int v0, v1, v2

    .line 526
    .local v0, top:I
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 533
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    invoke-interface {v1, p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;->onFooterRefreshing(Lcom/inveno/newpiflow/widget/PullToRefreshView;)V

    .line 536
    :cond_0
    iget v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 537
    return-void
.end method

.method private getHeaderTopMargin()I
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 611
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return v1
.end method

.method private headerPrepareToRefresh(I)V
    .locals 0
    .parameter "deltaY"

    .prologue
    .line 445
    return-void
.end method

.method private headerRefreshing()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->setOrientation(I)V

    .line 163
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    .line 165
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->addHeaderView()V

    .line 166
    return-void
.end method

.method private initContentAdapterView()V
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getChildCount()I

    move-result v0

    .line 242
    .local v0, count:I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 243
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "This layout must contain 3 child views,and AdapterView or ScrollView must in the second position!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_0
    const/4 v2, 0x0

    .line 247
    .local v2, view:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_3

    .line 248
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 249
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 250
    check-cast v3, Landroid/widget/AdapterView;

    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    .line 252
    :cond_1
    instance-of v3, v2, Lcom/inveno/newpiflow/widget/FadeScrollView;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 254
    check-cast v3, Lcom/inveno/newpiflow/widget/FadeScrollView;

    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    .line 247
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_3
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_4

    .line 258
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "must contain a AdapterView or ScrollView in this layout!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_4
    return-void
.end method

.method private isRefreshViewScroll(I)Z
    .locals 9
    .parameter "deltaY"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 363
    iget v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderState:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    if-ne v6, v7, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v4

    .line 367
    :cond_1
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v6, :cond_4

    .line 369
    if-lez p1, :cond_3

    .line 371
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 376
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-nez v6, :cond_2

    .line 378
    iput v5, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 379
    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 382
    .local v3, top:I
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v2

    .line 383
    .local v2, padding:I
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_4

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x8

    if-gt v6, v7, :cond_4

    .line 385
    iput v5, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 386
    goto :goto_0

    .line 389
    .end local v0           #child:Landroid/view/View;
    .end local v2           #padding:I
    .end local v3           #top:I
    :cond_3
    if-gez p1, :cond_4

    .line 390
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 392
    .local v1, lastChild:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_4

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v6

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 401
    iput v4, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 402
    goto :goto_0

    .line 407
    .end local v1           #lastChild:Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v6, :cond_0

    .line 409
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 410
    .restart local v0       #child:Landroid/view/View;
    if-lez p1, :cond_5

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_5

    .line 411
    iput v5, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    goto/16 :goto_0

    .line 413
    :cond_5
    if-gez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_0

    .line 416
    iput v4, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    move v4, v5

    .line 417
    goto/16 :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 265
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 266
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 270
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 271
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 274
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 280
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 281
    return-void

    .line 277
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private setHeaderTopMargin(I)V
    .locals 2
    .parameter "topMargin"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 547
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 548
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->invalidate()V

    .line 550
    return-void
.end method


# virtual methods
.method public getFooterState()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 226
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->addFooterView()V

    .line 227
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->initContentAdapterView()V

    .line 228
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    .line 234
    return-void
.end method

.method public onFooterRefreshComplete()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x2

    iput v0, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterState:I

    .line 588
    return-void
.end method

.method public onHeaderRefreshComplete()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public onHeaderRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "lastUpdated"

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 575
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 286
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 289
    :pswitch_1
    iput v1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mLastMotionY:I

    goto :goto_0

    .line 293
    :pswitch_2
    iget v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v1, v2

    .line 294
    .local v0, deltaY:I
    invoke-direct {p0, v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->isRefreshViewScroll(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const/4 v2, 0x1

    goto :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 315
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 321
    :pswitch_1
    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v2, v3

    .line 322
    .local v0, deltaY:I
    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    if-ne v3, v4, :cond_2

    .line 327
    :cond_1
    :goto_1
    iput v2, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mLastMotionY:I

    goto :goto_0

    .line 324
    :cond_2
    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_1

    .line 325
    invoke-direct {p0, v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->footerPrepareToRefresh(I)V

    goto :goto_1

    .line 331
    .end local v0           #deltaY:I
    :pswitch_2
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->getHeaderTopMargin()I

    move-result v1

    .line 332
    .local v1, topMargin:I
    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    if-eq v3, v4, :cond_0

    .line 340
    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_0

    .line 341
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    iget v5, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x32

    if-lt v3, v4, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->footerRefreshing()V

    goto :goto_0

    .line 347
    :cond_3
    iget v3, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "lastUpdated"

    .prologue
    .line 603
    return-void
.end method

.method public setOnFooterRefreshListener(Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;)V
    .locals 0
    .parameter "footerRefreshListener"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnFooterRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    .line 646
    return-void
.end method

.method public setOnHeaderRefreshListener(Lcom/inveno/newpiflow/widget/PullToRefreshView$OnHeaderRefreshListener;)V
    .locals 0
    .parameter "headerRefreshListener"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnHeaderRefreshListener;

    .line 641
    return-void
.end method
