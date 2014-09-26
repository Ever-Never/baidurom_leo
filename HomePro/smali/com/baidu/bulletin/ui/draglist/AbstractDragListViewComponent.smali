.class public abstract Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/IViewComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$2;,
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;,
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$RefreshOldAsyncTask;,
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;,
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$HideDragHeader;,
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;,
        Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;
    }
.end annotation


# static fields
.field private static final FREE_DELTA_DISTANCE:F = 10.0f

.field private static final MAX_PULL_DOWN_THRESHOLD:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "AbstractDragListViewComponent"


# instance fields
.field private isLastPage:Z

.field private isLoadOld:Z

.field protected mContext:Landroid/content/Context;

.field private mDragFooterProgressBar:Landroid/widget/ProgressBar;

.field private mDragFooterTextView:Landroid/widget/TextView;

.field private mDragFooterView:Landroid/view/View;

.field private mDragHeaderHeight:I

.field private mDragHeaderView:Landroid/view/View;

.field private mDragOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mDragScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mEmptyView:Landroid/view/View;

.field private mFirstVisibleItemIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

.field private mListView:Landroid/widget/ListView;

.field private mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

.field private mOnStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreY:F

.field private mRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

.field private mShowRatio:I

.field private mStartY:F

.field private mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter "context"
    .parameter "listView"
    .parameter "dragHeaderView"
    .parameter "dragFooterView"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mShowRatio:I

    .line 655
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLoadOld:Z

    .line 656
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLastPage:Z

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    .line 130
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    .line 132
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->measureHeaderView()V

    .line 134
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->hideDragHeader()V

    .line 136
    iput-object p4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;

    .line 145
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    .line 154
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;

    invoke-direct {v0, p0, v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 155
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;

    invoke-direct {v0, p0, v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnScrollListener;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 157
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 162
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnStateChangeListeners:Ljava/util/ArrayList;

    .line 166
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 167
    iput v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mFirstVisibleItemIndex:I

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isBigPullDownThreshold(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;FF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLastPage:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLastPage:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLoadOld:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isLoadOld:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mFirstVisibleItemIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mFirstVisibleItemIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F

    return p1
.end method

.method private distance(FF)F
    .locals 2
    .parameter "startY"
    .parameter "currentY"

    .prologue
    .line 302
    sub-float v0, p2, p1

    iget v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mShowRatio:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private isBigPullDownThreshold(FF)Z
    .locals 2
    .parameter "startY"
    .parameter "currentY"

    .prologue
    .line 306
    sub-float v0, p2, p1

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeaderView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 192
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 193
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 196
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 198
    .local v1, headerWidthSpec:I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    .local v3, lpHeight:I
    if-lez v3, :cond_1

    .line 203
    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 208
    .local v0, headerHeightSpec:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 210
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    .line 212
    const-string v4, "AbstractDragListViewComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dragheaderHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 205
    .end local v0           #headerHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #headerHeightSpec:I
    goto :goto_0
.end method

.method private notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    .locals 3
    .parameter "preState"
    .parameter "curState"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnStateChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;

    .line 254
    .local v1, onStateChangeListener:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto :goto_0

    .line 257
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #onStateChangeListener:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;
    :cond_0
    return-void
.end method

.method private refresh(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V
    .locals 1
    .parameter "preState"
    .parameter "curState"
    .parameter "startY"
    .parameter "currentY"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    .line 230
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->onRefreshNew(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V

    .line 232
    return-void
.end method


# virtual methods
.method protected distance(IFF)F
    .locals 1
    .parameter "arg"
    .parameter "startY"
    .parameter "currentY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1006
    invoke-direct {p0, p2, p3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F

    move-result v0

    return v0
.end method

.method public getCurrentState()Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    return-object v0
.end method

.method public getDragHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method protected getHeaderHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1015
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    return v0
.end method

.method public getImageScrollListener()Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getOnDragListStateChangedListener()Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    return-object v0
.end method

.method public hideDragHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 715
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 716
    return-void
.end method

.method protected abstract onRefreshNew(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V
.end method

.method protected abstract onRefreshOld(Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;)V
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 179
    .local v0, preState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 181
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->refresh(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 182
    return-void
.end method

.method public registStateChangeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;)V
    .locals 1
    .parameter "onStateChangeListener"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 108
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mEmptyView:Landroid/view/View;

    .line 109
    const v1, 0x7f08004c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, historyTodayView:Landroid/view/View;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mEmptyView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    return-void
.end method

.method public setImageScrollListener(Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mImageScrollListener:Lcom/baidu/bulletin/utils/imageloader/ImageScrollListener;

    .line 644
    return-void
.end method

.method public setOnScroll()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public setShowRatio(I)V
    .locals 0
    .parameter "showRatio"

    .prologue
    .line 284
    iput p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mShowRatio:I

    .line 285
    return-void
.end method

.method public showDragHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 725
    return-void
.end method

.method public showDragHeader(FF)V
    .locals 4
    .parameter "startY"
    .parameter "currentY"

    .prologue
    const/4 v3, 0x0

    .line 719
    const-string v0, "AbstractDragListViewComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDragHeader distance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "startY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDragHeaderHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 721
    return-void
.end method

.method public unRegistStateChangeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;)V
    .locals 1
    .parameter "onStateChangeListener"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method
