.class public Lcom/baidu/bulletin/ui/detail/ViewFlow;
.super Landroid/widget/AdapterView;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;,
        Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MIN_DURATION:I = 0xc8

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ViewFlow"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field private mFirstViewMsg:Ljava/lang/String;

.field private mLastDownX:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLastViewMsg:Ljava/lang/String;

.field private mLoadedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mRecycledViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSideBuffer:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

.field private needLayout:Z

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 47
    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    .line 57
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    .line 58
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstLayout:Z

    .line 63
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastOrientation:I

    .line 65
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    .line 70
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;-><init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 101
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "sideBuffer"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 47
    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    .line 57
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    .line 58
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstLayout:Z

    .line 63
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastOrientation:I

    .line 65
    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    .line 70
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;-><init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 107
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mContext:Landroid/content/Context;

    .line 108
    iput p2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    .line 109
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->init()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    .line 50
    iput v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    .line 57
    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    .line 58
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstLayout:Z

    .line 63
    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastOrientation:I

    .line 65
    iput-boolean v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    .line 70
    new-instance v1, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow$1;-><init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 114
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mContext:Landroid/content/Context;

    .line 115
    sget-object v1, Lcom/baidu/home2/R$styleable;->ViewFlow:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, styledAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    .line 118
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->init()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/ViewFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/bulletin/ui/detail/ViewFlow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/detail/ViewFlow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/detail/ViewFlow;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setVisibleView(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/detail/ViewFlow;)Landroid/widget/Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->resetFocus()V

    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    .line 417
    const-string v0, "ViewFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can Scroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 122
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 123
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    .line 124
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 125
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 127
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchSlop:I

    .line 128
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mMaximumVelocity:I

    .line 129
    return-void
.end method

.method private logBuffer()V
    .locals 3

    .prologue
    .line 683
    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mLoadedViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size of mRecycledViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v0, "viewflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexInAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IndexInBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void
.end method

.method private makeAndAddView(IZ)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "addToEnd"

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getRecycledView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "addToEnd"
    .parameter "convertView"

    .prologue
    const/4 v1, 0x0

    .line 650
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, p1, p3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 651
    .local v0, view:Landroid/view/View;
    if-eq v0, p3, :cond_0

    if-eqz p3, :cond_0

    .line 652
    invoke-virtual {p0, p3, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->removeDetachedView(Landroid/view/View;Z)V

    .line 653
    const-string v2, "ViewFlow"

    const-string v3, "removeDetachedView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    if-ne v0, p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private postViewSwitched(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 571
    if-nez p1, :cond_0

    .line 572
    iput-boolean v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    .line 624
    :goto_0
    return-void

    .line 576
    :cond_0
    if-lez p1, :cond_4

    .line 577
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    .line 578
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    .line 581
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    if-le v1, v2, :cond_1

    .line 582
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->recycleView(Landroid/view/View;)V

    .line 583
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    .line 587
    :cond_1
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    add-int v0, v1, v2

    .line 588
    .local v0, newBufferIndex:I
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v3}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 608
    :cond_2
    :goto_1
    new-instance v1, Lcom/baidu/bulletin/ui/detail/ViewFlow$3;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow$3;-><init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->post(Ljava/lang/Runnable;)Z

    .line 615
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

    if-eqz v1, :cond_3

    .line 616
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    .line 619
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v2, v1, v3}, Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;->onPostViewSwitched(Landroid/view/View;I)V

    .line 623
    :cond_3
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->logBuffer()V

    goto :goto_0

    .line 592
    .end local v0           #newBufferIndex:I
    :cond_4
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    .line 593
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    .line 596
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    if-le v1, v2, :cond_5

    .line 597
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->recycleView(Landroid/view/View;)V

    .line 601
    :cond_5
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    sub-int v0, v1, v2

    .line 602
    .restart local v0       #newBufferIndex:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 604
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    goto :goto_1
.end method

.method private resetFocus()V
    .locals 4

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->logBuffer()V

    .line 555
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->recycleViews()V

    .line 556
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->removeAllViewsInLayout()V

    .line 558
    const/4 v1, 0x0

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 562
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    .line 560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->logBuffer()V

    .line 567
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->requestLayout()V

    .line 568
    return-void
.end method

.method private setVisibleView(IZ)V
    .locals 7
    .parameter "indexInBuffer"
    .parameter "uiThread"

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    .line 430
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getWidth()I

    move-result v6

    .line 431
    .local v6, screenWidth:I
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    mul-int/2addr v0, v6

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v3, v0, v1

    .line 432
    .local v3, dx:I
    const-string v0, "ViewFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scroller: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " scrollx: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mCurrentScreen: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " screenWidth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " dx: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 435
    if-nez v3, :cond_0

    .line 436
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->onScrollChanged(IIII)V

    .line 437
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    .line 438
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->requestLayout()V

    .line 439
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->postInvalidate()V

    .line 440
    return-void
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 4
    .parameter "child"
    .parameter "addToEnd"
    .parameter "recycle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 629
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 630
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 634
    .restart local v0       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eqz p3, :cond_2

    .line 635
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 636
    const-string v1, "ViewFlow"

    const-string v2, "attachViewToParent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_1
    return-object p1

    :cond_1
    move v1, v2

    .line 635
    goto :goto_0

    .line 639
    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 640
    const-string v1, "ViewFlow"

    const-string v2, "addViewInLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v1, v2

    .line 639
    goto :goto_2
.end method

.method private snapToScreen(III)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->canScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 363
    :cond_0
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastScrollDirection:I

    .line 364
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 370
    iput p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    .line 372
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getWidth()I

    move-result v8

    .line 374
    .local v8, screenWidth:I
    mul-int v6, p1, v8

    .line 375
    .local v6, newX:I
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getScrollX()I

    move-result v1

    .line 376
    .local v1, startX:I
    sub-int v3, v6, v1

    .line 377
    .local v3, delta:I
    const-string v0, "ViewFlow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getScrollX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 379
    const/16 v0, 0x258

    if-le p2, v0, :cond_3

    .line 380
    const/16 v0, 0x7d0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 381
    const/high16 v0, 0x447a

    int-to-float v4, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int p3, v0

    .line 386
    :goto_1
    const/16 v0, 0xc8

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 387
    const-string v0, "ViewFlow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getScrollX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duratin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-nez v1, :cond_5

    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    if-nez v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstViewMsg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstViewMsg:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 398
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->postInvalidate()V

    goto/16 :goto_0

    .line 383
    :cond_3
    const/4 v0, 0x1

    iget v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 384
    .local v7, screenDelta:I
    if-gez p3, :cond_4

    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 p3, v0, 0x64

    :cond_4
    goto :goto_1

    .line 392
    .end local v7           #screenDelta:I
    :cond_5
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getWidth()I

    move-result v4

    mul-int/2addr v0, v4

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 393
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastViewMsg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastViewMsg:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 403
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const-string v0, "ViewFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " X:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->scrollTo(II)V

    .line 406
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->postInvalidate()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    if-eq v0, v2, :cond_0

    .line 408
    iput-boolean v3, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    .line 409
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    .line 411
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    .line 412
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastScrollDirection:I

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->postViewSwitched(I)V

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method protected getRecycledView()Landroid/view/View;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 488
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 132
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 133
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastOrientation:I

    .line 134
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 259
    :goto_0
    return v9

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 206
    .local v0, action:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    iget v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    if-eqz v8, :cond_1

    move v9, v10

    .line 207
    goto :goto_0

    .line 209
    :cond_1
    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_2

    .line 210
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 212
    :cond_2
    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 215
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 217
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_3
    :goto_1
    iget v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    if-eqz v8, :cond_9

    :goto_2
    move v9, v10

    goto :goto_0

    .line 220
    :pswitch_0
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionX:F

    .line 221
    iput v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionY:F

    .line 223
    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_3
    iput v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    goto :goto_1

    :cond_4
    move v8, v10

    goto :goto_3

    .line 229
    :pswitch_1
    iget v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 230
    .local v3, xDiff:I
    iget v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v6, v8

    .line 231
    .local v6, yDiff:I
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchSlop:I

    .line 232
    .local v1, touchSlop:I
    mul-int/lit8 v8, v1, 0x3

    if-le v3, v8, :cond_6

    move v4, v10

    .line 233
    .local v4, xMoved:Z
    :goto_4
    if-le v6, v1, :cond_7

    move v7, v10

    .line 235
    .local v7, yMoved:Z
    :goto_5
    if-nez v4, :cond_5

    if-eqz v7, :cond_8

    .line 236
    :cond_5
    invoke-virtual {p0, v3, v6}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->shouldHandleTouchEvent(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 237
    iput v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    goto :goto_0

    .end local v4           #xMoved:Z
    .end local v7           #yMoved:Z
    :cond_6
    move v4, v9

    .line 232
    goto :goto_4

    .restart local v4       #xMoved:Z
    :cond_7
    move v7, v9

    .line 233
    goto :goto_5

    .line 241
    .restart local v7       #yMoved:Z
    :cond_8
    if-eqz v4, :cond_3

    .line 243
    iput v10, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    .line 244
    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastDownX:F

    iput v2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionX:F

    goto :goto_1

    .line 251
    .end local v1           #touchSlop:I
    .end local v3           #xDiff:I
    .end local v4           #xMoved:Z
    .end local v6           #yDiff:I
    .end local v7           #yMoved:Z
    :pswitch_2
    iput v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    .line 253
    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    .line 254
    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 255
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_9
    move v10, v9

    .line 259
    goto :goto_2

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 177
    iget-boolean v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    if-nez v5, :cond_1

    .line 193
    :cond_0
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x0

    .line 182
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v3

    .line 183
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 184
    invoke-virtual {p0, v4}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 187
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 189
    add-int/2addr v1, v2

    .line 190
    const-string v5, "ViewFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onlayout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v2           #childWidth:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v8, 0x0

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 145
    iget-boolean v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->needLayout:Z

    if-nez v5, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 150
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 151
    .local v4, widthMode:I
    if-eq v4, v6, :cond_2

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 157
    .local v1, heightMode:I
    if-eq v1, v6, :cond_3

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 158
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v0

    .line 164
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 165
    const-string v5, "ViewFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "measure width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "measure height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    :cond_4
    iget-boolean v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstLayout:Z

    if-eqz v5, :cond_0

    .line 170
    iget v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v8}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->scrollTo(II)V

    .line 171
    iput-boolean v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstLayout:Z

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "h"
    .parameter "v"
    .parameter "oldh"
    .parameter "oldv"

    .prologue
    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    .line 357
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 265
    const/4 v9, 0x0

    .line 351
    :goto_0
    return v9

    .line 267
    :cond_0
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_1

    .line 268
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 270
    :cond_1
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 273
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 275
    .local v8, x:F
    packed-switch v0, :pswitch_data_0

    .line 351
    :cond_2
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 282
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 286
    :cond_3
    iput v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastDownX:F

    iput v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionX:F

    goto :goto_1

    .line 291
    :pswitch_1
    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 293
    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionX:F

    sub-float/2addr v9, v8

    float-to-int v2, v9

    .line 294
    .local v2, deltaX:I
    iput v8, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastMotionX:F

    .line 296
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getScrollX()I

    move-result v4

    .line 297
    .local v4, scrollX:I
    if-gez v2, :cond_4

    .line 298
    if-lez v4, :cond_2

    .line 299
    neg-int v9, v4

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->scrollBy(II)V

    goto :goto_1

    .line 301
    :cond_4
    if-lez v2, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getWidth()I

    move-result v10

    sub-int v1, v9, v10

    .line 305
    .local v1, availableToScroll:I
    if-lez v1, :cond_2

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->scrollBy(II)V

    goto :goto_1

    .line 313
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v4           #scrollX:I
    :pswitch_2
    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 314
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 315
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 316
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 318
    .local v6, velocityX:I
    const/16 v9, 0x258

    if-le v6, v9, :cond_6

    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    if-lez v9, :cond_6

    .line 320
    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, -0x1

    invoke-direct {p0, v9, v6, v10}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->snapToScreen(III)V

    .line 334
    :goto_2
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_5

    .line 335
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 336
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 340
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    :cond_5
    const/4 v9, 0x0

    iput v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    goto/16 :goto_1

    .line 321
    .restart local v5       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v6       #velocityX:I
    :cond_6
    const/16 v9, -0x258

    if-ge v6, v9, :cond_7

    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_7

    .line 324
    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v9, v9, 0x1

    const/4 v10, -0x1

    invoke-direct {p0, v9, v6, v10}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->snapToScreen(III)V

    goto :goto_2

    .line 326
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getWidth()I

    move-result v3

    .line 327
    .local v3, screenWidth:I
    iget v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastDownX:F

    sub-float v9, v8, v9

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    mul-int/lit8 v9, v3, 0x2

    div-int/lit8 v2, v9, 0x3

    .line 329
    .restart local v2       #deltaX:I
    :goto_3
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getScrollX()I

    move-result v9

    add-int/2addr v9, v2

    div-int v7, v9, v3

    .line 330
    .local v7, whichScreen:I
    const-string v9, "ViewFlow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " deltaX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " whichScreen: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " getScrollX(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getScrollX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v9, -0x1

    invoke-direct {p0, v7, v6, v9}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->snapToScreen(III)V

    goto :goto_2

    .line 327
    .end local v2           #deltaX:I
    .end local v7           #whichScreen:I
    :cond_8
    div-int/lit8 v2, v3, 0x3

    goto :goto_3

    .line 344
    .end local v3           #screenWidth:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    :pswitch_3
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_9

    .line 345
    iget-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 346
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 348
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchState:I

    goto/16 :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mRecycledViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 506
    const-string v0, "ViewFlow"

    const-string v1, "recycleView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected recycleViews()V
    .locals 1

    .prologue
    .line 498
    :goto_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 466
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "initialPosition"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mDataSetObserver:Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 475
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 476
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;-><init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mDataSetObserver:Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;

    .line 477
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mDataSetObserver:Lcom/baidu/bulletin/ui/detail/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 484
    :cond_2
    :goto_0
    return-void

    .line 483
    :cond_3
    invoke-virtual {p0, p2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setEndViewMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "firstMsg"
    .parameter "lastMsg"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mFirstViewMsg:Ljava/lang/String;

    .line 455
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLastViewMsg:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setOnViewSwitchListener(Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

    .line 451
    return-void
.end method

.method public setSelection(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 516
    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mNextScreen:I

    .line 517
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 518
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 522
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 524
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->recycleViews()V

    .line 525
    iput p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    .line 526
    invoke-direct {p0, p1, v6}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, currentView:Landroid/view/View;
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 529
    const/4 v2, 0x1

    .local v2, offset:I
    :goto_1
    iget v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mSideBuffer:I

    sub-int/2addr v4, v2

    if-ltz v4, :cond_4

    .line 530
    sub-int v1, p1, v2

    .line 531
    .local v1, leftIndex:I
    add-int v3, p1, v2

    .line 532
    .local v3, rightIndex:I
    if-ltz v1, :cond_2

    .line 533
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v1, v7}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 534
    :cond_2
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 535
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v3, v6}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->makeAndAddView(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 529
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 538
    .end local v1           #leftIndex:I
    .end local v3           #rightIndex:I
    :cond_4
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    .line 539
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->requestLayout()V

    .line 540
    const-string v4, "ViewFlow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentBufferIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentAdapterIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v4, Lcom/baidu/bulletin/ui/detail/ViewFlow$2;

    invoke-direct {v4, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow$2;-><init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V

    invoke-virtual {p0, v4}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->post(Ljava/lang/Runnable;)Z

    .line 548
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

    if-eqz v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mViewSwitchListener:Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;

    iget v5, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v4, v0, v5}, Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public shouldHandleTouchEvent(II)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 197
    mul-int/lit8 v0, p1, 0x5

    mul-int/lit8 v1, p2, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow;->mTouchSlop:I

    mul-int/lit8 v0, v0, 0x6

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
