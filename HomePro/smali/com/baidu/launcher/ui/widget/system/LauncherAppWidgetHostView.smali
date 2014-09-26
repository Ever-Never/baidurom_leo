.class public Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mHost:Landroid/appwidget/AppWidgetHost;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)V
    .locals 1
    .parameter "context"
    .parameter "host"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->setWillNotDraw(Z)V

    .line 55
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHost:Landroid/appwidget/AppWidgetHost;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 118
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    return-void
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    .line 66
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 67
    const/4 v0, 0x1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_0

    .line 83
    :pswitch_2
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 84
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeWidget()V
    .locals 6

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 179
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 180
    check-cast v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    .line 182
    .local v1, i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/baidu/launcher/ubc/UBCMetric;->removeWidget(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 187
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 188
    .local v0, c:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-eqz v0, :cond_1

    .line 189
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v2, outRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getHitRect(Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 192
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->clearDisappearingChildren()V

    .line 193
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 195
    .end local v2           #outRect:Landroid/graphics/Rect;
    :cond_1
    new-instance v4, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;

    const-string v5, "deleteWidget"

    invoke-direct {v4, p0, v5}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;-><init>(Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView$1;->start()V

    .line 201
    .end local v0           #c:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    :cond_2
    return-void
.end method
