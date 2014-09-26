.class public Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;
.super Landroid/widget/FrameLayout;
.source "AllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;
    }
.end annotation


# static fields
.field private static final MIN_INDICATOR_WIDTH:I = 0xa

.field private static final sScrollIndicatorFadeInDuration:I = 0x96

.field private static final sScrollIndicatorFadeOutDuration:I = 0x1f4

.field private static final sScrollIndicatorFlashDuration:I = 0x1f4


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field private indicator:Landroid/view/View;

.field private indicatorPosition:Landroid/graphics/Rect;

.field private mListener:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;

.field private mScrollIndicatorAnimator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;-><init>(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;-><init>(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;-><init>(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public UpdateIndicatorPosition(FI)V
    .locals 7
    .parameter "translationX"
    .parameter "screenNum"

    .prologue
    const/4 v6, 0x0

    .line 79
    const/4 v3, 0x1

    if-gt p2, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 88
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->getMeasuredWidth()I

    move-result v1

    .line 83
    .local v1, width:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, p2

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 84
    .local v0, indicatorWidth:I
    sub-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 85
    .local v2, x:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    add-int v4, v2, v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mScrollIndicatorAnimator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mScrollIndicatorAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 136
    :cond_0
    return-void
.end method

.method public flashScrollingIndicator(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 99
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 101
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->showScrollingIndicator(Z)V

    .line 102
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hideScrollingIndicator(Z)V
    .locals 6
    .parameter "immediately"

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->cancelScrollingIndicatorAnimations()V

    .line 140
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    if-eqz p1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mScrollIndicatorAnimator:Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mScrollIndicatorAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 147
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;-><init>(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    .line 57
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicatorPosition:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 182
    return-void
.end method

.method public setOnIndicatorClickListener(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mListener:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;

    .line 61
    return-void
.end method

.method public showScrollingIndicator(Z)V
    .locals 6
    .parameter "immediately"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 106
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->cancelScrollingIndicatorAnimations()V

    .line 108
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mScrollIndicatorAnimator:Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mScrollIndicatorAnimator:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 114
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 115
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mListener:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->mListener:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;

    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$OnIndicatorClickListener;->onIndicatorClick(I)V

    .line 67
    :cond_0
    return-void
.end method
