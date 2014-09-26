.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;
.super Ljava/lang/Object;
.source "QuickSwitchPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$PerformClick;,
        Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;,
        Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;
    }
.end annotation


# instance fields
.field public final MOVE_THRESHOLD:F

.field private final TIME_CONFIRM:I

.field private final TIME_OUT:J

.field private mHasPerformedLongPress:Z

.field private mOutOfView:Z

.field private mPendingForLongPress:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;

.field private mPressedView:Landroid/view/View;

.field private mPrevX:F

.field private mPrevY:F

.field private mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

.field private mTimer:Ljava/util/Timer;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mOutOfView:Z

    .line 164
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->TIME_OUT:J

    .line 165
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->TIME_CONFIRM:I

    .line 166
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->MOVE_THRESHOLD:F

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->performLongClick()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->performClick()V

    return-void
.end method

.method private getPressedView(II)Landroid/view/View;
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    aget-object v1, v3, v0

    .line 329
    .local v1, pos:[I
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v1, v8

    aget v4, v1, v9

    aget v5, v1, v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1600(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v1, v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget v3, v1, v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;I)Landroid/view/View;

    move-result-object v3

    .line 335
    .end local v1           #pos:[I
    .end local v2           #rect:Landroid/graphics/Rect;
    :goto_1
    return-object v3

    .line 326
    .restart local v1       #pos:[I
    .restart local v2       #rect:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v1           #pos:[I
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isMoved(FFFF)Z
    .locals 2
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    const/high16 v1, 0x3f80

    .line 314
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDragEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 419
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mIsDragging:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2202(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 420
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 433
    .local v1, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragMode:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$602(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 439
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 440
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v3, v3, v4

    aget v3, v3, v6

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v3, v3, v4

    aget v3, v3, v5

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 443
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postAnimation()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    .line 502
    new-instance v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    .line 503
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->start()V

    .line 504
    return-void

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 477
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v4

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;Z)V

    .line 480
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 481
    .local v2, lpTarget:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 482
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v0, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 483
    .local v0, index:I
    iput v0, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 484
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    aget v3, v3, v6

    iput v3, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 485
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    aget v3, v3, v5

    iput v3, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v3, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v3, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 488
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v0           #index:I
    .end local v2           #lpTarget:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_3
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 493
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 494
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v3, v3, v4

    aget v3, v3, v6

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v3, v3, v4

    aget v3, v3, v5

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 498
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onDragStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$102(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)Landroid/view/View;

    .line 398
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mIsDragging:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2202(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 399
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0202ac

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 401
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v2, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v2, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 404
    iget v1, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    add-int/lit8 v1, v1, -0x14

    iput v1, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->requestLayout()V

    .line 407
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-int v2, v2

    iget v3, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    sub-int/2addr v2, v3

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1102(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;I)I

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-int v2, v2

    iget v3, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    sub-int/2addr v2, v3

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1202(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;I)I

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragMode:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$602(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 415
    return-void
.end method

.method private performClick()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method private performLongClick()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->performHapticFeedback(I)Z

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->onDragStart()V

    goto :goto_0
.end method

.method private pointInView(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 321
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget v3, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget v4, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1600(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    .local v1, rect:Landroid/graphics/Rect;
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    .line 379
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$1;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 387
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 222
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    .line 224
    packed-switch v0, :pswitch_data_0

    .line 294
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    if-nez v6, :cond_8

    .line 295
    const/4 v6, 0x1

    .line 309
    :goto_0
    return v6

    .line 228
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mThread:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$ResetThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 234
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-int v7, v7

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->getPressedView(II)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    .line 235
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 237
    new-instance v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPendingForLongPress:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;

    .line 238
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPendingForLongPress:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->dumpSwitchInfo(Landroid/view/View;)V
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)V

    .line 241
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPrevX:F

    .line 242
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPrevY:F

    .line 309
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    if-nez v6, :cond_4

    .line 246
    const/4 v6, 0x1

    goto :goto_0

    .line 248
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    if-nez v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_5

    .line 251
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mOutOfView:Z

    .line 252
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPendingForLongPress:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 253
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 256
    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPrevX:F

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPrevY:F

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    iget v9, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->isMoved(FFFF)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 258
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 260
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v7

    sub-int v4, v6, v7

    .line 261
    .local v4, shadowLeft:I
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v7

    sub-int v5, v6, v7

    .line 262
    .local v5, shadowTop:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 263
    .local v2, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I

    move-result-object v6

    iget v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v3, v6, v7

    .line 264
    .local v3, pos:[I
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v7, 0x0

    aget v7, v3, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    int-to-float v9, v4

    int-to-float v10, v5

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getDistance(FFFF)I
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;FFFF)I

    move-result v1

    .line 265
    .local v1, distance:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    if-le v1, v6, :cond_6

    .line 268
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v7, 0x0

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z

    .line 269
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v6, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v6, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 270
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    move-result-object v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v6, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v6, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 271
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V
    invoke-static {v6, v7, v8}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;Z)V

    .line 272
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    const/4 v7, 0x0

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$302(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)Landroid/view/View;

    .line 275
    .end local v1           #distance:I
    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #pos:[I
    .end local v4           #shadowLeft:I
    .end local v5           #shadowTop:I
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 276
    .restart local v2       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    .line 277
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    .line 279
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPressedView:Landroid/view/View;

    iget v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget v8, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget v9, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I
    invoke-static {v10}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1600(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I
    invoke-static {v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->startTimer()V

    .line 282
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    double-to-int v8, v8

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->checkTargetSwap(II)V
    invoke-static {v6, v7, v8}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$1800(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V

    .line 284
    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_7
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPrevX:F

    .line 285
    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPrevY:F

    goto/16 :goto_1

    .line 297
    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mOutOfView:Z

    if-nez v6, :cond_a

    .line 299
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mPendingForLongPress:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$CheckForLongPress;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 300
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    new-instance v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$PerformClick;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener$PerformClick;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_9
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mOutOfView:Z

    goto/16 :goto_1

    .line 302
    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 304
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mHasPerformedLongPress:Z

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->onDragEnd()V

    goto :goto_2

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mX:F

    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;->mY:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    #calls: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->onTargetConfirm(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V

    .line 392
    return-void
.end method
