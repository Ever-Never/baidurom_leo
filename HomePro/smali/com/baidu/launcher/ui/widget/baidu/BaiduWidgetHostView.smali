.class public Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "BaiduWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;,
        Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_WIDGET:Ljava/lang/String; = "com.baidu.launcher.action.UPDATE_WIDGET"


# instance fields
.field private mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

.field private mHasPerformedLongPress:Z

.field private mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 42
    .local v0, padding:I
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->setPadding(IIII)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    .line 174
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;-><init>(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 178
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    .line 187
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public onAdd()V
    .locals 3

    .prologue
    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v2, :cond_1

    .line 59
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    .line 60
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v2}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onWidgetAdded()V

    .line 65
    :cond_0
    return-void

    .line 56
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onBind()V
    .locals 3

    .prologue
    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v2, :cond_1

    .line 74
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    .end local v0           #child:Landroid/view/View;
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    .line 75
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v2}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onWidgetBinded()V

    .line 80
    :cond_0
    return-void

    .line 71
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v0}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onDestory()V

    .line 111
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    .line 122
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    .line 123
    const/4 v0, 0x1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 133
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->postCheckForLongClick()V

    goto :goto_0

    .line 139
    :pswitch_2
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mHasPerformedLongPress:Z

    .line 140
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v0}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onPause()V

    .line 206
    :cond_0
    return-void
.end method

.method public onRemove()V
    .locals 6

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 88
    check-cast v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .line 89
    .local v1, i:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 91
    .local v0, c:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-eqz v0, :cond_0

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v2, outRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getHitRect(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 95
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->clearDisappearingChildren()V

    .line 96
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 98
    .end local v2           #outRect:Landroid/graphics/Rect;
    :cond_0
    iget v4, v1, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/ubc/UBC;->reportSearchRemove(Landroid/content/Context;)V

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v4}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onWidgetRemoved()V

    .line 105
    .end local v0           #c:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #i:Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
    :cond_2
    return-void
.end method

.method public onScroll(Z)V
    .locals 1
    .parameter "scrolling"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onScroll(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public onSnapTo(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onSnapTo(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView$BaiduWidgetView;->update(Landroid/content/Intent;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onWhichScreen(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;->mContent:Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;

    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;->onWhichScreen(I)V

    .line 201
    :cond_0
    return-void
.end method
