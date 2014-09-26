.class public Lcom/baidu/bulletin/ui/PagedListView;
.super Landroid/widget/ListView;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;
    }
.end annotation


# instance fields
.field private mSpeedCounter:Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;

.field private mTouchedOrigin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/PagedListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method private getDuration(FF)I
    .locals 3
    .parameter "distance"
    .parameter "speed"

    .prologue
    .line 107
    const/high16 v1, 0x3fc0

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 108
    .local v0, duration:F
    float-to-int v1, v0

    const/16 v2, 0x320

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private getVisibleHeight(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 45
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/PagedListView;->mTouchedOrigin:F

    .line 46
    new-instance v0, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;

    iget v1, p0, Lcom/baidu/bulletin/ui/PagedListView;->mTouchedOrigin:F

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;-><init>(Lcom/baidu/bulletin/ui/PagedListView;F)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/PagedListView;->mSpeedCounter:Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 60
    :pswitch_0
    iget-object v6, p0, Lcom/baidu/bulletin/ui/PagedListView;->mSpeedCounter:Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->onMovedTo(F)V

    goto :goto_0

    .line 65
    :pswitch_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/baidu/bulletin/ui/PagedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, item:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 68
    .local v0, height:I
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/PagedListView;->getVisibleHeight(Landroid/view/View;)I

    move-result v5

    .line 70
    .local v5, visibleHeight:I
    const/4 v2, 0x0

    .line 71
    .local v2, offset:I
    const/4 v3, 0x0

    .line 72
    .local v3, scrollToNext:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/baidu/bulletin/ui/PagedListView;->mTouchedOrigin:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 73
    move v2, v5

    .line 74
    sub-int v3, v5, v0

    .line 80
    :goto_1
    const/4 v4, 0x0

    .line 81
    .local v4, toScroll:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x64

    div-int/lit8 v8, v0, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-gt v6, v7, :cond_1

    iget-object v6, p0, Lcom/baidu/bulletin/ui/PagedListView;->mSpeedCounter:Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;

    invoke-virtual {v6}, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->getSpeed()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fd999999999999aL

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 83
    :cond_1
    move v4, v3

    .line 89
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/baidu/bulletin/ui/PagedListView;->mSpeedCounter:Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;

    invoke-virtual {v7}, Lcom/baidu/bulletin/ui/PagedListView$SpeedCounter;->getSpeed()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/baidu/bulletin/ui/PagedListView;->getDuration(FF)I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/baidu/bulletin/ui/PagedListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 76
    .end local v4           #toScroll:I
    :cond_2
    sub-int v2, v5, v0

    .line 77
    move v3, v5

    goto :goto_1

    .line 86
    .restart local v4       #toScroll:I
    :cond_3
    move v4, v2

    goto :goto_2

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
