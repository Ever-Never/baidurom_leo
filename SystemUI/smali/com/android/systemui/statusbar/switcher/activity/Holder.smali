.class public Lcom/android/systemui/statusbar/switcher/activity/Holder;
.super Landroid/widget/LinearLayout;
.source "Holder.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "this"

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private mDragUpDirection:Z

.field private mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

.field private mDragging:Z

.field private mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

.field private mFakedDragViewHolder:Landroid/widget/LinearLayout;

.field private mInitialTouchPos:F

.field private mInitialTranslationY:F

.field private mLastBottomPostion:F

.field private mLastSwapPostion:F

.field private mLastTopPostion:F

.field mLp:Landroid/widget/LinearLayout$LayoutParams;

.field mPagingTouchSlop:F

.field private mPreferences:[I

.field private mRowHeight:I

.field private mScrollThreshold:I

.field private mScroller:Landroid/widget/ScrollView;

.field private mSize:I

.field private mSwitchHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

.field private mTitleHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSize:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragging:Z

    .line 42
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPagingTouchSlop:F

    .line 229
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastSwapPostion:F

    .line 230
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastTopPostion:F

    .line 231
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastBottomPostion:F

    .line 233
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragUpDirection:Z

    .line 55
    return-void
.end method

.method private addMoreSwitcher([I)[I
    .locals 7
    .parameter "showResult"

    .prologue
    const/4 v6, 0x0

    .line 352
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSwitchHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;I)[I

    move-result-object v3

    .line 353
    .local v3, preEditValues:[I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .line 354
    .local v2, moreSwitchIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 355
    aget v4, v3, v0

    if-nez v4, :cond_0

    .line 356
    move v2, v0

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 360
    if-ne v0, v2, :cond_4

    .line 361
    array-length v4, p1

    add-int/lit8 v1, v4, -0x1

    .local v1, j:I
    :goto_2
    if-le v1, v0, :cond_2

    .line 362
    add-int/lit8 v4, v1, -0x1

    aget v4, p1, v4

    aput v4, p1, v1

    .line 361
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 364
    :cond_2
    aput v6, p1, v0

    .line 368
    .end local v1           #j:I
    :cond_3
    return-object p1

    .line 359
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private addTextTitle(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f04002f

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mTitleHeight:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, t1:Landroid/widget/TextView;
    const v3, 0x7f0c00c2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-static {p1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, t2:Landroid/widget/TextView;
    const v3, 0x7f0c00c3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    sget v3, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_SIZE:I

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public static final debug(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 48
    const-string v0, "this"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "this"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method private save()V
    .locals 11

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getChildCount()I

    move-result v1

    .line 108
    .local v1, count:I
    sget v8, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_SIZE:I

    new-array v7, v8, [I

    .line 110
    .local v7, showResult:[I
    iget v8, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSize:I

    sget v9, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_SIZE:I

    sub-int/2addr v8, v9

    new-array v2, v8, [I

    .line 112
    .local v2, hideResult:[I
    const/4 v5, 0x0

    .line 113
    .local v5, indexShow:I
    const/4 v4, 0x0

    .line 114
    .local v4, indexHide:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, child:Landroid/view/View;
    instance-of v8, v0, Lcom/android/systemui/statusbar/switcher/activity/Item;

    if-eqz v8, :cond_0

    .line 117
    sget v8, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->DEFAULT_SHOW_SIZE:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_1

    .line 118
    check-cast v0, Lcom/android/systemui/statusbar/switcher/activity/Item;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v8

    aput v8, v7, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    check-cast v0, Lcom/android/systemui/statusbar/switcher/activity/Item;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v8

    aput v8, v2, v4

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addMoreSwitcher([I)[I

    move-result-object v7

    .line 127
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSwitchHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferences(Landroid/content/Context;[II)V

    .line 128
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSwitchHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v2, v10}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferences(Landroid/content/Context;[II)V

    .line 129
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.systemui.statusbar.switcher.update"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v6, intent:Landroid/content/Intent;
    const-string v8, "com.android.systemui"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void
.end method


# virtual methods
.method public animationSwapItem(Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "currItem"
    .parameter "dragItem"
    .parameter "ev"

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 312
    .local v1, old:Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 315
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setTranslationY(F)V

    .line 317
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 318
    .local v2, translationY:F
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setLayerType(ILandroid/graphics/Paint;)V

    .line 319
    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    .local v0, anim:Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/systemui/statusbar/switcher/activity/Holder;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    new-instance v3, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;-><init>(Lcom/android/systemui/statusbar/switcher/activity/Holder;Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 330
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/switcher/activity/Item;
    .locals 8
    .parameter "ev"

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 189
    .local v5, touchY:I
    move-object v2, p0

    .line 190
    .local v2, holder:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 191
    .local v1, count:I
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v6

    .line 192
    .local v6, y:I
    const/4 v0, 0x0

    .line 194
    .local v0, childIdx:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 195
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 196
    .local v4, slidingChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 197
    instance-of v3, v4, Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 198
    .local v3, isItem:Z
    if-ge v5, v6, :cond_0

    if-eqz v3, :cond_0

    check-cast v4, Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 200
    .end local v3           #isItem:Z
    .end local v4           #slidingChild:Landroid/view/View;
    :goto_1
    return-object v4

    .line 194
    .restart local v3       #isItem:Z
    .restart local v4       #slidingChild:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v3           #isItem:Z
    .end local v4           #slidingChild:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "v"

    .prologue
    .line 204
    return-object p1
.end method

.method public onBeginDrag(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->createItem(Landroid/content/Context;I)Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragViewHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragViewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTouchPos:F

    .line 215
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTouchPos:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTranslationY:F

    .line 216
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastSwapPostion:F

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTranslationY:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setTranslationY(F)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setPressed(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setVisibility(I)V

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v0, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 224
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastTopPostion:F

    .line 225
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastBottomPostion:F

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start drag on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->debug(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onDrag(Landroid/view/MotionEvent;)V
    .locals 19
    .parameter "ev"

    .prologue
    .line 235
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "drag on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->debug(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTouchPos:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    .line 237
    .local v5, delta:F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPagingTouchSlop:F

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTranslationY()F

    move-result v13

    .line 241
    .local v13, preTranslationY:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTranslationY:F

    add-float v3, v15, v5

    .line 242
    .local v3, currTranslationY:F
    sub-float v15, v3, v13

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragUpDirection:Z

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTranslationY:F

    move/from16 v16, v0

    add-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setTranslationY(F)V

    .line 246
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 247
    .local v14, visibleRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 248
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastTopPostion:F

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_5

    const/4 v9, 0x1

    .line 249
    .local v9, isInScrolling:Z
    :goto_2
    iget v15, v14, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastTopPostion:F

    .line 250
    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastBottomPostion:F

    .line 251
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragUpDirection:Z

    if-eqz v15, :cond_2

    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastBottomPostion:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getBottom()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mScroller:Landroid/widget/ScrollView;

    const/16 v16, 0x0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x8

    add-int v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 256
    :cond_2
    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragUpDirection:Z

    if-nez v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastTopPostion:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_3

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mScroller:Landroid/widget/ScrollView;

    const/16 v16, 0x0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x8

    sub-int v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 262
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-result-object v4

    .line 263
    .local v4, currView:Lcom/android/systemui/statusbar/switcher/activity/Item;
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    if-eq v15, v4, :cond_0

    .line 264
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "can swap now "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->debug(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastSwapPostion:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    .line 268
    const-string v15, "avoid too close swap"

    invoke-static {v15}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    .end local v4           #currView:Lcom/android/systemui/statusbar/switcher/activity/Item;
    .end local v9           #isInScrolling:Z
    .end local v14           #visibleRect:Landroid/graphics/Rect;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 248
    .restart local v14       #visibleRect:Landroid/graphics/Rect;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 272
    .restart local v4       #currView:Lcom/android/systemui/statusbar/switcher/activity/Item;
    .restart local v9       #isInScrolling:Z
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTop()I

    move-result v15

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getBottom()I

    move-result v16

    add-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    int-to-float v11, v15

    .line 273
    .local v11, middle:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTop()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getTranslationY()F

    move-result v16

    add-float v8, v15, v16

    .line 274
    .local v8, dragItemTop:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getHeight()I

    move-result v15

    int-to-float v15, v15

    add-float v7, v8, v15

    .line 275
    .local v7, dragItemBottom:F
    float-to-int v15, v11

    float-to-int v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    float-to-int v15, v11

    float-to-int v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    const/4 v12, 0x1

    .line 277
    .local v12, middleHitDragRegion:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 278
    .local v2, currIndex:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 279
    .local v6, dragIndex:I
    if-le v6, v2, :cond_a

    cmpl-float v15, v11, v7

    if-lez v15, :cond_9

    const/4 v10, 0x1

    .line 280
    .local v10, isMoveFast:Z
    :goto_4
    if-nez v12, :cond_7

    if-eqz v10, :cond_0

    .line 281
    :cond_7
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastSwapPostion:F

    .line 282
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "do swap now "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/switcher/activity/Item;->getKey()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->debug(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v15, v1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->animationSwapItem(Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 275
    .end local v2           #currIndex:I
    .end local v6           #dragIndex:I
    .end local v10           #isMoveFast:Z
    .end local v12           #middleHitDragRegion:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 279
    .restart local v2       #currIndex:I
    .restart local v6       #dragIndex:I
    .restart local v12       #middleHitDragRegion:Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    cmpg-float v15, v11, v8

    if-gez v15, :cond_b

    const/4 v10, 0x1

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public onDragCancelled(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setPressed(Z)V

    .line 291
    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 292
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLastSwapPostion:F

    .line 293
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTranslationY:F

    .line 294
    iput v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mInitialTouchPos:F

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragViewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragViewHolder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 300
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragging:Z

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->save()V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drag cancel on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->debug(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragging:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 162
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 164
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->onBeginDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 171
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->onDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragView:Lcom/android/systemui/statusbar/switcher/activity/Item;

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->onDragCancelled(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    .line 69
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mScrollThreshold:I

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mTitleHeight:I

    .line 71
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mRowHeight:I

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 73
    .local v3, lineHeigth:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v4, lineLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSwitchHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    .line 76
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSwitchHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPreferences:[I

    .line 77
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPreferences:[I

    array-length v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSize:I

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mSize:I

    if-ge v0, v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPreferences:[I

    aget v5, v5, v0

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPreferences:[I

    aget v6, v6, v0

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/switcher/activity/Item;->createItem(Landroid/content/Context;I)Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-result-object v1

    .line 83
    .local v1, item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04002e

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, line:Landroid/view/View;
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v1           #item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    .end local v2           #line:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addTextTitle(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 136
    .local v0, action:I
    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->getChildAtPosition(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/switcher/activity/Item;

    move-result-object v1

    .line 138
    .local v1, item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->isTouchingOnDrager(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragging:Z

    .line 145
    .end local v1           #item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    :goto_0
    return v2

    .restart local v1       #item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    :cond_0
    move v2, v3

    .line 142
    goto :goto_0

    .end local v1           #item:Lcom/android/systemui/statusbar/switcher/activity/Item;
    :cond_1
    move v2, v3

    .line 145
    goto :goto_0
.end method

.method public onSwapItem(Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;)V
    .locals 3
    .parameter "currItem"
    .parameter "dragItem"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 334
    .local v0, index:I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 335
    .local v1, index2:I
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->removeView(Landroid/view/View;)V

    .line 336
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->removeView(Landroid/view/View;)V

    .line 337
    if-ge v0, v1, :cond_1

    .line 338
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;I)V

    .line 339
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;I)V

    .line 346
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mDragging:Z

    if-nez v2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->save()V

    .line 349
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;I)V

    .line 342
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFakedDragViewHolder(Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mFakedDragViewHolder:Landroid/widget/LinearLayout;

    .line 63
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .parameter "pagingTouchSlop"

    .prologue
    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mPagingTouchSlop:F

    .line 150
    return-void
.end method

.method public setScroller(Landroid/widget/ScrollView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder;->mScroller:Landroid/widget/ScrollView;

    .line 59
    return-void
.end method
