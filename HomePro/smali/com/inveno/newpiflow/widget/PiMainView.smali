.class public Lcom/inveno/newpiflow/widget/PiMainView;
.super Landroid/widget/FrameLayout;
.source "PiMainView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PiMainView"


# instance fields
.field footerRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

.field private mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

.field private mActionbarViewHeight:I

.field private mContext:Landroid/content/Context;

.field mFadeIn:Landroid/view/animation/Animation;

.field mFadeOut:Landroid/view/animation/Animation;

.field private mLastMoveY:I

.field private mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

.field private mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

.field private mShowActionbar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeOut:Landroid/view/animation/Animation;

    .line 44
    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeIn:Landroid/view/animation/Animation;

    .line 127
    new-instance v0, Lcom/inveno/newpiflow/widget/PiMainView$3;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/widget/PiMainView$3;-><init>(Lcom/inveno/newpiflow/widget/PiMainView;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->footerRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    .line 48
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/PiMainView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeOut:Landroid/view/animation/Animation;

    .line 44
    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeIn:Landroid/view/animation/Animation;

    .line 127
    new-instance v0, Lcom/inveno/newpiflow/widget/PiMainView$3;

    invoke-direct {v0, p0}, Lcom/inveno/newpiflow/widget/PiMainView$3;-><init>(Lcom/inveno/newpiflow/widget/PiMainView;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->footerRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    .line 53
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/PiMainView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiSetLinerLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/inveno/newpiflow/widget/PiMainView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mShowActionbar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/inveno/newpiflow/widget/PiMainView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PullToRefreshView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    return-object v0
.end method

.method private changeTheme()V
    .locals 4

    .prologue
    .line 236
    const/16 v0, 0xff

    const/16 v1, 0xe7

    const/16 v2, 0xe8

    const/16 v3, 0xe9

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PiMainView;->setBackgroundColor(I)V

    .line 237
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 238
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 59
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiMainView;->changeTheme()V

    .line 64
    new-instance v1, Lcom/inveno/newpiflow/widget/PiScrollView;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;-><init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;)V

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    .line 65
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->setOverScrollMode(I)V

    .line 67
    new-instance v1, Lcom/inveno/newpiflow/widget/PullToRefreshView;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/inveno/newpiflow/widget/PullToRefreshView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    .line 68
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiMainView;->footerRefreshListener:Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->setOnFooterRefreshListener(Lcom/inveno/newpiflow/widget/PullToRefreshView$OnFooterRefreshListener;)V

    .line 69
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->addView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/PiMainView;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/inveno/newpiflow/widget/PiMainView;->setLayoutDirection(I)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarViewHeight:I

    .line 75
    new-instance v0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    invoke-direct {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;-><init>()V

    .line 76
    .local v0, anim3DBoxControl:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;
    new-instance v1, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-direct {v1, p1, v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;-><init>(Landroid/content/Context;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    .line 77
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/PiMainView;->addView(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeOut:Landroid/view/animation/Animation;

    .line 81
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeOut:Landroid/view/animation/Animation;

    new-instance v2, Lcom/inveno/newpiflow/widget/PiMainView$1;

    invoke-direct {v2, p0}, Lcom/inveno/newpiflow/widget/PiMainView$1;-><init>(Lcom/inveno/newpiflow/widget/PiMainView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeIn:Landroid/view/animation/Animation;

    .line 103
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeIn:Landroid/view/animation/Animation;

    new-instance v2, Lcom/inveno/newpiflow/widget/PiMainView$2;

    invoke-direct {v2, p0}, Lcom/inveno/newpiflow/widget/PiMainView$2;-><init>(Lcom/inveno/newpiflow/widget/PiMainView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/inveno/newpiflow/widget/PiMainView;->setLayoutDirection(I)V

    .line 125
    return-void
.end method


# virtual methods
.method public changeMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v0, p1}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeMode(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    .line 189
    .local v0, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_0
    return v1

    .line 191
    :pswitch_1
    iput v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mLastMoveY:I

    goto :goto_0

    .line 194
    :pswitch_2
    iget v2, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mLastMoveY:I

    iget v3, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarViewHeight:I

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mShowActionbar:Z

    if-nez v2, :cond_0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v2

    iget-boolean v2, v2, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    if-nez v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mLastMoveY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    iget-boolean v1, v1, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowDragHeader:Z

    if-nez v1, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiMainView;->startShowSettingAnim()V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiMainView;->startHideSettingAnim()V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPullRefreshView()Lcom/inveno/newpiflow/widget/PullToRefreshView;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    return-object v0
.end method

.method public getScrollView()Lcom/inveno/newpiflow/widget/PiScrollView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    return-object v0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->onClose()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    .line 262
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForExitInveno()V

    .line 251
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->onHide()V

    .line 254
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    iget v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarViewHeight:I

    invoke-virtual {v0, v2, v2, p4, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->layout(IIII)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v0, v2, v2, p4, p5}, Lcom/inveno/newpiflow/widget/PiScrollView;->layout(IIII)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    invoke-virtual {v0, v2, v2, p4, p5}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->layout(IIII)V

    .line 161
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/inveno/newpiflow/widget/PiMainView;->setMeasuredDimension(II)V

    .line 167
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    iget v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarViewHeight:I

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->measure(II)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mScrollView:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->measure(II)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mPullToRefreshView:Lcom/inveno/newpiflow/widget/PullToRefreshView;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->measure(II)V

    .line 183
    :cond_2
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForEnterInveno()V

    .line 242
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForClickInfo(B)V

    .line 243
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/newpiflow/tools/AdUtil;->getCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/newpiflow/tools/AdUtil;->setCount(Landroid/content/Context;I)V

    .line 246
    :cond_0
    return-void
.end method

.method public startHideSettingAnim()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->clearAnimation()V

    .line 215
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    :cond_0
    return-void
.end method

.method public startShowSettingAnim()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->clearAnimation()V

    .line 222
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiMainView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    :cond_0
    return-void
.end method
