.class public Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field static final BACKGROUND_PADDING:I = 0x18

.field public static final BOTTOM:I = 0x3

.field static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field public static final LEFT:I = 0x0

.field static final RESIZE_THRESHOLD:F = 0.66f

.field public static final RIGHT:I = 0x2

.field static final SNAP_DURATION:I = 0x96

.field public static final TOP:I = 0x1


# instance fields
.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field private mExpandability:[I

.field private mItemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

.field private mLauncher:Lcom/baidu/launcher/app/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

.field private mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V
    .locals 9
    .parameter "context"
    .parameter "itemInfo"
    .parameter "widgetView"
    .parameter "cellLayout"
    .parameter "dragLayer"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    move-object v5, p1

    .line 82
    check-cast v5, Lcom/baidu/launcher/app/Launcher;

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    .line 83
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mItemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 84
    iput-object p4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 85
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    .line 86
    invoke-virtual {p3}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    .line 87
    iput-object p5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 88
    const v5, 0x7f08013b

    invoke-virtual {p5, v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    .line 90
    invoke-virtual {p3}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 91
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {p1, v1}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    .line 92
    .local v4, result:[I
    const/4 v5, 0x0

    aget v5, v4, v5

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinHSpan:I

    .line 93
    const/4 v5, 0x1

    aget v5, v4, v5

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinVSpan:I

    .line 95
    const v5, 0x7f02039f

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 96
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 99
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 100
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v6, 0x7f0203a1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x13

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 104
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 107
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v6, 0x7f0203a2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x15

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 110
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 111
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 114
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v6, 0x7f0203a3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x31

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 117
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 121
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v6, 0x7f0203a0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x51

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 124
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 125
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v3, p:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 129
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 130
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 131
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 133
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 134
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 142
    .local v0, density:F
    const/high16 v5, 0x41c0

    mul-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 143
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 144
    return-void

    .line 136
    .end local v0           #density:F
    :cond_1
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 137
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 394
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 390
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 5
    .parameter "context"
    .parameter "component"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 378
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 384
    .local v0, padding:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 385
    .local v2, requiredWidth:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 386
    .local v1, requiredHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->rectToCell(Landroid/content/res/Resources;II)[I

    move-result-object v3

    return-object v3
.end method

.method private resizeWidgetIfNeeded()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    const v11, 0x3f28f5c3

    .line 226
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCellWidth()I

    move-result v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidthGap()I

    move-result v10

    add-int v7, v9, v10

    .line 227
    .local v7, xThreshold:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getCellHeight()I

    move-result v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeightGap()I

    move-result v10

    add-int v8, v9, v10

    .line 229
    .local v8, yThreshold:I
    iget v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v10, v7

    div-float/2addr v9, v10

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v10, v10

    sub-float v3, v9, v10

    .line 230
    .local v3, hSpanIncF:F
    iget v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 232
    .local v6, vSpanIncF:F
    const/4 v2, 0x0

    .line 233
    .local v2, hSpanInc:I
    const/4 v5, 0x0

    .line 234
    .local v5, vSpanInc:I
    const/4 v0, 0x0

    .line 235
    .local v0, cellXInc:I
    const/4 v1, 0x0

    .line 237
    .local v1, cellYInc:I
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_0

    .line 238
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 240
    :cond_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_1

    .line 241
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 244
    :cond_1
    if-nez v2, :cond_2

    if-nez v5, :cond_2

    .line 297
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 250
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 254
    .local v4, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v9, :cond_9

    .line 255
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v13

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 256
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 257
    mul-int/lit8 v2, v2, -0x1

    .line 258
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v13

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 259
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 260
    iget v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningHInc:I

    .line 267
    :cond_3
    :goto_1
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v9, :cond_a

    .line 268
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v14

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 269
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 270
    mul-int/lit8 v5, v5, -0x1

    .line 271
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v14

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 272
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 273
    iget v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningVInc:I

    .line 281
    :cond_4
    :goto_2
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v9, :cond_6

    .line 282
    :cond_5
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v2

    iput v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 283
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v9, v0

    iput v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 286
    :cond_6
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_8

    .line 287
    :cond_7
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v9, v5

    iput v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 288
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    add-int/2addr v9, v1

    iput v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 292
    :cond_8
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v9, v10, v11}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 295
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/ui/homeview/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 296
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_0

    .line 261
    :cond_9
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v9, :cond_3

    .line 262
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 263
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 264
    iget v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_1

    .line 274
    :cond_a
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_4

    .line 275
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 276
    iget v9, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 277
    iget v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningVInc:I

    goto :goto_2
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 148
    .local v1, horizontalActive:Z
    :goto_0
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v2, v3

    .line 149
    .local v2, verticalActive:Z
    :goto_1
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 150
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_5

    if-eqz v1, :cond_5

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 151
    iget v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p2, v5, :cond_6

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 152
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p2, v5, :cond_7

    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 154
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_8

    :cond_0
    move v0, v3

    .line 157
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 158
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineX:I

    .line 160
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineY:I

    .line 161
    iput v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningHInc:I

    .line 162
    iput v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRunningVInc:I

    .line 164
    if-eqz v0, :cond_1

    .line 165
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 166
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_b

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 168
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_c

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->resetOccupiedCells()V

    .line 171
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 172
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #verticalActive:Z
    :cond_2
    move v1, v4

    .line 147
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v2, v4

    .line 148
    goto/16 :goto_1

    .restart local v2       #verticalActive:Z
    :cond_4
    move v5, v4

    .line 149
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 150
    goto/16 :goto_3

    :cond_6
    move v5, v4

    .line 151
    goto/16 :goto_4

    :cond_7
    move v5, v4

    .line 152
    goto :goto_5

    :cond_8
    move v0, v4

    .line 154
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    :cond_9
    move v3, v7

    .line 165
    goto :goto_7

    :cond_a
    move v3, v7

    .line 166
    goto :goto_8

    :cond_b
    move v3, v7

    .line 167
    goto :goto_9

    :cond_c
    move v6, v7

    .line 168
    goto :goto_a
.end method

.method public commitResizeForDelta(II)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 306
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    .line 307
    .local v6, lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mItemInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v2, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    iget v3, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    iget v4, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/data/HomeDataManager;->resizeItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;IIII)V

    .line 309
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->requestLayout()V

    .line 312
    new-instance v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame$1;-><init>(Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 24
    .parameter "animate"

    .prologue
    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    .line 321
    .local v5, lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScrollX()I

    move-result v20

    sub-int v16, v19, v20

    .line 322
    .local v16, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScrollY()I

    move-result v20

    sub-int v18, v19, v20

    .line 324
    .local v18, yOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 326
    .local v7, newWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 329
    .local v6, newHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    add-int v8, v19, v20

    .line 330
    .local v8, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    add-int v9, v19, v20

    .line 332
    .local v9, newY:I
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 333
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    sub-int v6, v6, v19

    .line 336
    :cond_0
    if-nez p1, :cond_1

    .line 337
    iput v7, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    .line 338
    iput v6, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    .line 339
    iput v8, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    .line 340
    iput v9, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->requestLayout()V

    .line 374
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v19, "width"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 348
    .local v14, width:Landroid/animation/PropertyValuesHolder;
    const-string v19, "height"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v6, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 350
    .local v3, height:Landroid/animation/PropertyValuesHolder;
    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v8, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 351
    .local v15, x:Landroid/animation/PropertyValuesHolder;
    const-string v19, "y"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 352
    .local v17, y:Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    const/16 v20, 0x2

    aput-object v15, v19, v20

    const/16 v20, 0x3

    aput-object v17, v19, v20

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 353
    .local v10, oa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 354
    .local v4, leftOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 355
    .local v11, rightOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 356
    .local v13, topOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 357
    .local v2, bottomOa:Landroid/animation/ObjectAnimator;
    new-instance v19, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame$2;-><init>(Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 363
    .local v12, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 364
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v13, v19, v20

    const/16 v20, 0x2

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 371
    :goto_1
    const-wide/16 v19, 0x96

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 366
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 368
    :cond_3
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    const/16 v20, 0x3

    aput-object v13, v19, v20

    const/16 v20, 0x4

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public updateDeltas(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 181
    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    .line 182
    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    .line 188
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 189
    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    .line 190
    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    .line 195
    :cond_1
    :goto_1
    return-void

    .line 183
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    .line 185
    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 191
    :cond_3
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    .line 193
    iget v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 202
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    .line 204
    .local v0, lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 205
    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    .line 206
    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    .line 211
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 212
    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    .line 213
    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    .line 218
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 219
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->requestLayout()V

    .line 220
    return-void

    .line 207
    :cond_2
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 208
    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 214
    :cond_3
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 215
    iget v1, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    goto :goto_1
.end method
