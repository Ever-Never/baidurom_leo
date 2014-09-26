.class public Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 177
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 70
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 71
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 72
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 77
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 80
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 82
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 83
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 88
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    return-void

    .line 85
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 86
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getHeight()I

    move-result v2

    .line 157
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 158
    .local v1, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v0, v6

    .line 160
    .local v0, Y:I
    const/4 v4, 0x0

    .line 161
    .local v4, progress:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v2, v6

    if-le v0, v6, :cond_0

    .line 162
    const/4 v5, 0x0

    .line 168
    .local v5, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getMax()I

    move-result v3

    .line 169
    .local v3, max:I
    int-to-float v6, v3

    mul-float v4, v5, v6

    .line 170
    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->setProgress(I)V

    .line 171
    return-void

    .line 163
    .end local v3           #max:I
    .end local v5           #scale:F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingTop()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 164
    const/high16 v5, 0x3f80

    .restart local v5       #scale:F
    goto :goto_0

    .line 166
    .end local v5           #scale:F
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v2, v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v5, v6, v7

    .restart local v5       #scale:F
    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 94
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 95
    .local v1, orientation:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 96
    const/high16 v2, -0x3d4c

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 59
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->invalidate()V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;IZ)V

    .line 66
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 116
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    .line 117
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;)V

    .line 49
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 152
    goto :goto_0

    .line 126
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->setPressed(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->onStartTrackingTouch()V

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 132
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 137
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->onStopTrackingTouch()V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->setPressed(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 147
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->onStopTrackingTouch()V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->setPressed(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar$OnSeekBarChangeListener;

    .line 43
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/ui/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method
