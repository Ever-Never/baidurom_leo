.class public abstract Lcom/baidu/launcher/ui/common/DraggableViewPagger;
.super Lcom/baidu/launcher/ui/common/BaiduViewPagger;
.source "DraggableViewPagger.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDragSlopeThreshold:F

.field private mIsDragEnabled:Z

.field private mIsDragging:Z

.field private mLastTouchedItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragging:Z

    .line 55
    .local v0, wasDragging:Z
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragging:Z

    .line 56
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cancelDragging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragging:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mLastTouchedItem:Landroid/view/View;

    .line 62
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragEnabled:Z

    .line 63
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 127
    iget v11, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 128
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 129
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 130
    .local v6, y:F
    iget v11, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mLastMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 131
    .local v5, xDiff:I
    iget v11, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 133
    .local v7, yDiff:I
    iget v3, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mTouchSlop:I

    .line 134
    .local v3, touchSlop:I
    if-le v7, v3, :cond_1

    move v8, v9

    .line 135
    .local v8, yMoved:Z
    :goto_0
    int-to-float v11, v7

    int-to-float v12, v5

    div-float/2addr v11, v12

    iget v12, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mDragSlopeThreshold:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    move v1, v9

    .line 137
    .local v1, isUpwardMotion:Z
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mLastTouchedItem:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 139
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mLastTouchedItem:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->beginDragging(Landroid/view/View;)Z

    .line 142
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mAllowLongPress:Z

    if-eqz v9, :cond_0

    .line 143
    iput-boolean v10, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mAllowLongPress:Z

    .line 147
    iget v9, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 153
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void

    .end local v1           #isUpwardMotion:Z
    .end local v8           #yMoved:Z
    :cond_1
    move v8, v10

    .line 134
    goto :goto_0

    .restart local v8       #yMoved:Z
    :cond_2
    move v1, v10

    .line 135
    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->cancelDragging()V

    .line 70
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragEnabled:Z

    goto :goto_0

    .line 73
    :pswitch_2
    iget v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mTouchState:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragEnabled:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->determineDraggingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->cancelDragging()V

    .line 162
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onDetachedFromWindow()V

    .line 163
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 83
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->beginDragging(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mLastTouchedItem:Landroid/view/View;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mIsDragEnabled:Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 89
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragSlopeThreshold(F)V
    .locals 0
    .parameter "dragSlopeThreshold"

    .prologue
    .line 156
    iput p1, p0, Lcom/baidu/launcher/ui/common/DraggableViewPagger;->mDragSlopeThreshold:F

    .line 157
    return-void
.end method
