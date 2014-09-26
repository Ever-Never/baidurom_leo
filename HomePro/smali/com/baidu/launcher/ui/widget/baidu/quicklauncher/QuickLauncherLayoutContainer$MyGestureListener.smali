.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "QuickLauncherLayoutContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x4348

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatable:Z
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    :goto_0
    return v1

    .line 578
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v1, v2

    .line 579
    goto :goto_0

    .line 582
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 583
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mRotatTabAnimation:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 587
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->clockwiseGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    invoke-static {v3, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$700(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 588
    .local v0, inverse:Z
    if-eqz v0, :cond_3

    .line 589
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getFlingTargetAngleFromCurAngle(Z)I
    invoke-static {v4, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$900(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Z)I

    move-result v4

    int-to-float v4, v4

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F
    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$802(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;F)F

    .line 590
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$800(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$800(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F

    move-result v6

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTabFromAngle(F)I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;F)I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateToTargetAngle(FIZ)V

    :goto_1
    move v1, v2

    .line 595
    goto :goto_0

    .line 592
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getFlingTargetAngleFromCurAngle(Z)I
    invoke-static {v4, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$900(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Z)I

    move-result v4

    int-to-float v4, v4

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F
    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$802(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;F)F

    .line 593
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$800(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlingTargetAngle:F
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$800(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)F

    move-result v6

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getTabFromAngle(F)I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;F)I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateToTargetAngle(FIZ)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e"

    .prologue
    const/4 v6, 0x1

    .line 600
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 632
    :goto_0
    return v5

    .line 603
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 604
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 605
    .local v4, y:F
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->pointToPosition(FF)I

    move-result v7

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedViewsPostition:I
    invoke-static {v5, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1102(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;I)I

    .line 606
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedViewsPostition:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 607
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCurShowLayout:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedViewsPostition:I
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;
    invoke-static {v5, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1302(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/view/View;)Landroid/view/View;

    .line 608
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 609
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 610
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;

    if-eqz v5, :cond_1

    .line 611
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 612
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v5, v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v5, :cond_1

    .line 613
    new-instance v0, Landroid/content/Intent;

    move-object v5, v2

    check-cast v5, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v5, v5, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 615
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/app/Launcher;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v1

    .line 616
    .local v1, success:Z
    if-eqz v1, :cond_1

    .line 617
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local v2           #tag:Ljava/lang/Object;
    iget-object v7, v2, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->syncLaunchEventToApplist(Landroid/content/ComponentName;)V
    invoke-static {v5, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/content/ComponentName;)V

    .line 622
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #success:Z
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v5

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mTappedView:Landroid/view/View;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->exitNow(Landroid/content/Context;)V

    move v5, v6

    .line 623
    goto/16 :goto_0

    .line 627
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->touchOutsideCircle(FF)Z
    invoke-static {v5, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$1500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 628
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v5

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$MyGestureListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->closeQuickLauncherLayer(Landroid/content/Context;)V

    move v5, v6

    .line 629
    goto/16 :goto_0

    .line 632
    :cond_3
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0
.end method
