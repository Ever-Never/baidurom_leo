.class public Lcom/baidu/launcher/ui/dragdrop/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;,
        Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;
    }
.end annotation


# instance fields
.field private initialAlpha:F

.field private mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field private mDragLayerDirty:Z

.field private mDrawWallpaper:Z

.field private mDropAnimPercent:F

.field private mDropAnimation:Landroid/view/animation/Animation;

.field private mDropView:Landroid/view/View;

.field private mDropViewAlpha:F

.field private mDropViewPos:[I

.field private mDropViewScale:F

.field private mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mInScrollArea:Z

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollDirection:I

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWorkspaceScrollX:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    .line 74
    iput-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 75
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    iput-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    .line 78
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I

    .line 82
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 93
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mInScrollArea:Z

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mScrollDirection:I

    .line 95
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimPercent:F

    .line 103
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDrawWallpaper:Z

    .line 129
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 137
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    .line 138
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayHeight:I

    .line 140
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;

    invoke-direct {v2, p0, v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$WallpaperObserver;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    return p1
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    return p1
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->initialAlpha:F

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$702(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimPercent:F

    return p1
.end method

.method private fadeOutDragView()V
    .locals 3

    .prologue
    .line 629
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 630
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 631
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 632
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 633
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/dragdrop/DragLayer$6;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$6;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 643
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/dragdrop/DragLayer$7;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$7;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 649
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 650
    return-void

    .line 631
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "ev"
    .parameter "intercept"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v7, v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->showMenu(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 272
    :goto_0
    return v5

    .line 256
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 258
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 260
    .local v4, y:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    .line 261
    .local v0, child:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;
    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 262
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getLeft()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0, v7, v8}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    .line 265
    iput v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mXDown:I

    .line 266
    iput v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mYDown:I

    .line 267
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .end local v0           #child:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;
    :cond_2
    move v5, v6

    .line 272
    goto :goto_0
.end method

.method private inValidScroll()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1063
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    .line 1064
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    if-nez v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private interceptDrawTransitionEffect(I)Z
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 736
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    const/4 v1, 0x0

    .line 759
    :goto_0
    return v1

    .line 739
    :cond_0
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v1, :cond_2

    .line 740
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    .line 741
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_3

    :cond_1
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 744
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->postInvalidate()V

    .line 759
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 746
    :cond_3
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 747
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    .line 754
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    if-eqz v1, :cond_2

    .line 755
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->postInvalidate()V

    goto :goto_1

    .line 749
    :cond_5
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 750
    .local v0, info:Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_4

    .line 751
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    goto :goto_2
.end method

.method private interceptTransitionEffect(Landroid/graphics/Canvas;)Z
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 832
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 893
    :goto_0
    return v7

    .line 834
    :cond_0
    sget-boolean v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    if-lt v9, v10, :cond_1

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_7

    :cond_1
    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    const/4 v10, 0x2

    if-le v9, v10, :cond_7

    .line 837
    const/4 v5, 0x0

    .line 838
    .local v5, offset:I
    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v6

    .line 839
    .local v6, statusBarHeight:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 840
    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    if-ge v9, v10, :cond_3

    .line 841
    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 842
    .local v4, info:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_2

    .line 843
    const/4 v1, 0x0

    .line 845
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 849
    :goto_1
    if-eqz v1, :cond_2

    .line 850
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 851
    .local v3, bw:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 853
    .local v2, bh:I
    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int/2addr v9, v3

    neg-int v10, v6

    iget v11, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int v12, v2, v6

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    sub-int v5, v9, v10

    .line 855
    mul-int/lit16 v9, v5, 0xff

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    div-int v0, v9, v10

    .line 856
    .local v0, alpha:I
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 857
    neg-int v9, v6

    sub-int v10, v2, v6

    invoke-virtual {v1, v7, v9, v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 858
    rsub-int v9, v0, 0xff

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 859
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 862
    .end local v0           #alpha:I
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #bh:I
    .end local v3           #bw:I
    :cond_2
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    .line 864
    .end local v4           #info:Landroid/app/WallpaperInfo;
    :cond_3
    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    if-le v9, v10, :cond_5

    .line 865
    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 866
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_4

    .line 867
    const/4 v1, 0x0

    .line 869
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 873
    :goto_2
    if-eqz v1, :cond_4

    .line 874
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 875
    .restart local v3       #bw:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 877
    .restart local v2       #bh:I
    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int/2addr v9, v3

    neg-int v10, v6

    iget v11, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int v12, v2, v6

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 878
    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v11, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 879
    mul-int/lit16 v9, v5, 0xff

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    div-int v0, v9, v10

    .line 880
    .restart local v0       #alpha:I
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 881
    neg-int v9, v6

    sub-int v10, v2, v6

    invoke-virtual {v1, v7, v9, v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 882
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 883
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 886
    .end local v0           #alpha:I
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #bh:I
    .end local v3           #bw:I
    :cond_4
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    .line 888
    .end local v4           #info:Landroid/app/WallpaperInfo;
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .end local v5           #offset:I
    .end local v6           #statusBarHeight:I
    :cond_6
    :goto_3
    move v7, v8

    .line 893
    goto/16 :goto_0

    .line 889
    :cond_7
    iget-boolean v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    if-eqz v9, :cond_6

    .line 890
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 891
    iput-boolean v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    goto :goto_3

    .line 870
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    .restart local v5       #offset:I
    .restart local v6       #statusBarHeight:I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 846
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method private interceptUpdateWallpaperOffset()Z
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 695
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 696
    const/4 v4, 0x0

    .line 708
    :goto_0
    return v4

    .line 697
    :cond_0
    sget-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v4, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 699
    .local v2, token:Landroid/os/IBinder;
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v0, v4, -0x2

    .line 700
    .local v0, count:I
    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    .line 701
    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    mul-int v1, v4, v0

    .line 702
    .local v1, range:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 703
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    int-to-float v4, v0

    div-float v4, v8, v4

    invoke-virtual {v3, v4, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 704
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 708
    .end local v0           #count:I
    .end local v1           #range:I
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private invalidateBubbleTextView(Lcom/baidu/launcher/ui/common/PressedView;)V
    .locals 6
    .parameter "icon"

    .prologue
    .line 1043
    invoke-interface {p1}, Lcom/baidu/launcher/ui/common/PressedView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 1044
    .local v0, padding:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1045
    .local v1, rect:Landroid/graphics/Rect;
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1046
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidate(IIII)V

    .line 1047
    return-void
.end method

.method private needDraw()Z
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimPercent:F

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 1024
    :cond_0
    const/4 v0, 0x1

    .line 1026
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transitionEffect(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 763
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->interceptTransitionEffect(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    sget-boolean v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    if-le v8, v9, :cond_7

    :cond_2
    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-le v8, v13, :cond_7

    .line 768
    const/4 v5, 0x0

    .line 769
    .local v5, offset:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v6

    .line 770
    .local v6, statusBarHeight:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 771
    .local v7, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 772
    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    if-gez v8, :cond_4

    .line 773
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 774
    .local v4, info:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_3

    .line 775
    const/4 v1, 0x0

    .line 777
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 781
    :goto_1
    if-eqz v1, :cond_3

    .line 782
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 783
    .local v3, bw:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 785
    .local v2, bh:I
    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int/2addr v8, v3

    neg-int v9, v6

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int v11, v2, v6

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 786
    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    neg-int v5, v8

    .line 787
    mul-int/lit16 v8, v5, 0xff

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    div-int v0, v8, v9

    .line 788
    .local v0, alpha:I
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 789
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    neg-int v8, v6

    sub-int v9, v2, v6

    invoke-virtual {v1, v12, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    rsub-int v8, v0, 0xff

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 792
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 795
    .end local v0           #alpha:I
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #bh:I
    .end local v3           #bw:I
    :cond_3
    iput-boolean v13, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    .line 797
    .end local v4           #info:Landroid/app/WallpaperInfo;
    :cond_4
    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    if-le v8, v9, :cond_6

    .line 798
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 799
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    if-nez v4, :cond_5

    .line 800
    const/4 v1, 0x0

    .line 802
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 806
    :goto_2
    if-eqz v1, :cond_5

    .line 807
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 808
    .restart local v3       #bw:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 810
    .restart local v2       #bh:I
    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int/2addr v8, v3

    neg-int v9, v6

    iget v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int v11, v2, v6

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 811
    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    sub-int v5, v8, v9

    .line 812
    mul-int/lit16 v8, v5, 0xff

    iget v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    div-int v0, v8, v9

    .line 813
    .restart local v0       #alpha:I
    rsub-int v8, v0, 0xff

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 814
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 815
    neg-int v8, v6

    sub-int v9, v2, v6

    invoke-virtual {v1, v12, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 816
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 817
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 820
    .end local v0           #alpha:I
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #bh:I
    .end local v3           #bw:I
    :cond_5
    iput-boolean v13, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    .line 822
    .end local v4           #info:Landroid/app/WallpaperInfo;
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 823
    .end local v5           #offset:I
    .end local v6           #statusBarHeight:I
    .end local v7           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_7
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    if-eqz v8, :cond_0

    .line 824
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 825
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v12, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 827
    :cond_8
    iput-boolean v12, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    goto/16 :goto_0

    .line 778
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    .restart local v4       #info:Landroid/app/WallpaperInfo;
    .restart local v5       #offset:I
    .restart local v6       #statusBarHeight:I
    .restart local v7       #wallpaperManager:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 803
    :catch_1
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public addResizeFrame(Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 8
    .parameter "itemInfo"
    .parameter "widget"
    .parameter "cellLayout"

    .prologue
    const/4 v7, -0x1

    .line 240
    new-instance v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V

    .line 243
    .local v0, resizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;
    new-instance v6, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    invoke-direct {v6, v7, v7}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;-><init>(II)V

    .line 244
    .local v6, lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->customPosition:Z

    .line 246
    invoke-virtual {p0, v0, v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 250
    return-void
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
    .locals 15
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "finalAlpha"
    .parameter "finalScale"
    .parameter "duration"
    .parameter "motionInterpolator"
    .parameter "alphaInterpolator"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"

    .prologue
    .line 415
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v12, v2

    .line 417
    .local v12, dist:F
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 418
    .local v14, res:Landroid/content/res/Resources;
    const v2, 0x7f0d0007

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v13, v2

    .line 422
    .local v13, maxDist:F
    if-gez p6, :cond_0

    .line 423
    const v2, 0x7f0d0006

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v12

    div-float/2addr v2, v13

    float-to-int v2, v2

    add-int/lit16 v0, v2, 0x96

    move/from16 p6, v0

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 439
    :cond_2
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    .line 440
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v10

    .line 441
    .local v10, alpha:Z
    if-eqz v10, :cond_5

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->initialAlpha:F

    .line 443
    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->initialAlpha:F

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    .line 448
    :goto_0
    new-instance v2, Lcom/baidu/launcher/ui/dragdrop/DragLayer$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p8

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$2;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FZF)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    .line 485
    if-eqz p8, :cond_3

    if-nez p7, :cond_4

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 489
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p6

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 490
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 491
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;

    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Runnable;Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 512
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 513
    return-void

    .line 445
    :cond_5
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    goto :goto_0
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ZZ)V
    .locals 17
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "finalAlpha"
    .parameter "finalScale"
    .parameter "duration"
    .parameter "motionInterpolator"
    .parameter "alphaInterpolator"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"
    .parameter "isAlpha"

    .prologue
    .line 520
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v14, v4

    .line 522
    .local v14, dist:F
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 523
    .local v16, res:Landroid/content/res/Resources;
    const v4, 0x7f0d0007

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v15, v4

    .line 527
    .local v15, maxDist:F
    if-gez p6, :cond_0

    .line 528
    const v4, 0x7f0d0006

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    div-float/2addr v4, v15

    float-to-int v4, v4

    add-int/lit16 v0, v4, 0x12c

    move/from16 p6, v0

    .line 536
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 540
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mFadeOutAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 544
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    .line 545
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v11

    .line 546
    .local v11, alpha:Z
    if-eqz v11, :cond_5

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->initialAlpha:F

    .line 548
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->initialAlpha:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    .line 553
    :goto_0
    new-instance v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v4 .. v13}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    .line 595
    if-eqz p8, :cond_3

    if-nez p7, :cond_4

    .line 596
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 599
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p6

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    new-instance v5, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p10

    move-object/from16 v3, p1

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Runnable;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 625
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    return-void

    .line 550
    :cond_5
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    goto :goto_0
.end method

.method public animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V
    .locals 12
    .parameter "dragView"
    .parameter "originView"
    .parameter "desLoc"
    .parameter "dragSource"
    .parameter "dragInfo"
    .parameter "onFinishAnimationRunnable"
    .parameter "scale"
    .parameter "deltaY"

    .prologue
    .line 329
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 331
    .local v3, from:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 332
    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 333
    new-instance v4, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x1

    aget v2, p3, v2

    const/4 v5, 0x0

    aget v5, p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    .local v4, to:Landroid/graphics/Rect;
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 338
    :cond_2
    new-instance v10, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;

    move-object/from16 v0, p6

    invoke-direct {v10, p0, p2, v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 368
    .local v10, onCompleteRunnable:Ljava/lang/Runnable;
    const/high16 v5, 0x3f80

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v11}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public animateViewIntoPosition(Landroid/view/View;[ILjava/lang/Runnable;FZ)V
    .locals 11
    .parameter "view"
    .parameter "desLoc"
    .parameter "onFinishAnimationRunnable"
    .parameter "scale"
    .parameter "fadeout"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 385
    .local v2, from:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 386
    new-instance v3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v4, 0x0

    aget v4, p2, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 387
    .local v3, to:Landroid/graphics/Rect;
    const/high16 v4, 0x3f80

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    move-object v9, p3

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public animateViewIntoPosition(Landroid/view/View;[ILjava/lang/Runnable;FZZ)V
    .locals 12
    .parameter "view"
    .parameter "desLoc"
    .parameter "onFinishAnimationRunnable"
    .parameter "scale"
    .parameter "fadeout"
    .parameter "isAlpha"

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 376
    .local v2, from:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 377
    new-instance v3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v4, 0x0

    aget v4, p2, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 378
    .local v3, to:Landroid/graphics/Rect;
    const/high16 v4, 0x3f80

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p4

    move-object v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ZZ)V

    goto :goto_0
.end method

.method public changeWallpaperOffset(I)V
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->interceptDrawTransitionEffect(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v1, :cond_0

    .line 657
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    .line 658
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_3

    :cond_2
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 661
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->postInvalidate()V

    goto :goto_0

    .line 663
    :cond_3
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 664
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    .line 671
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->postInvalidate()V

    goto :goto_0

    .line 666
    :cond_5
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 667
    .local v0, info:Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    goto :goto_1
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 222
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    .line 224
    .local v0, frame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    .end local v0           #frame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 228
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 898
    invoke-direct/range {p0 .. p1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->transitionEffect(Landroid/graphics/Canvas;)V

    .line 899
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDrawWallpaper:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragLayerDirty:Z

    if-nez v3, :cond_1

    .line 900
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v26

    .line 901
    .local v26, wallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual/range {v26 .. v26}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v17

    .line 902
    .local v17, info:Landroid/app/WallpaperInfo;
    if-nez v17, :cond_1

    .line 903
    const/4 v11, 0x0

    .line 905
    .local v11, bg:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 909
    :goto_0
    if-nez v11, :cond_8

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    .line 932
    .end local v11           #bg:Landroid/graphics/drawable/Drawable;
    .end local v17           #info:Landroid/app/WallpaperInfo;
    .end local v26           #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I

    const/4 v4, 0x0

    aget v30, v3, v4

    .line 937
    .local v30, xPos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I

    const/4 v4, 0x1

    aget v31, v3, v4

    .line 938
    .local v31, yPos:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    .line 939
    .local v27, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 940
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v22

    .line 941
    .local v22, scrollX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v23

    .line 943
    .local v23, scrollY:I
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 944
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 945
    move/from16 v0, v30

    int-to-float v3, v0

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 946
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    sub-float/2addr v3, v4

    move/from16 v0, v27

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    sub-float/2addr v4, v5

    move/from16 v0, v16

    int-to-float v5, v0

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 947
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 949
    if-nez v22, :cond_2

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    instance-of v3, v3, Lcom/baidu/launcher/ui/common/ActionTextView;

    if-eqz v3, :cond_b

    .line 950
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v25, v0

    check-cast v25, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 951
    .local v25, v:Lcom/baidu/launcher/ui/common/ActionTextView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/baidu/launcher/ui/common/ActionTextView;->setScrollXY(II)V

    .line 953
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->needDraw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 956
    :cond_3
    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/common/ActionTextView;->setScrollXY(II)V

    .line 984
    .end local v25           #v:Lcom/baidu/launcher/ui/common/ActionTextView;
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 988
    .end local v16           #height:I
    .end local v22           #scrollX:I
    .end local v23           #scrollY:I
    .end local v27           #width:I
    .end local v30           #xPos:I
    .end local v31           #yPos:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    if-eqz v3, :cond_6

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    invoke-interface {v3}, Lcom/baidu/launcher/ui/common/PressedView;->getPressedOrFocusedBackgroundPadding()I

    move-result v19

    .line 990
    .local v19, padding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    invoke-interface {v3}, Lcom/baidu/launcher/ui/common/PressedView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 991
    .local v10, b:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_6

    .line 992
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 993
    .local v21, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 994
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v3, v19

    int-to-float v3, v3

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v19

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 999
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v19           #padding:I
    .end local v21           #rect:Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mInScrollArea:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mScrollDirection:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_7

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v28

    .line 1001
    .local v28, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-virtual/range {v28 .. v28}, Lcom/baidu/launcher/ui/homeview/Workspace;->getWidth()I

    move-result v27

    .line 1002
    .restart local v27       #width:I
    invoke-virtual/range {v28 .. v28}, Lcom/baidu/launcher/ui/homeview/Workspace;->getHeight()I

    move-result v16

    .line 1004
    .restart local v16       #height:I
    invoke-virtual/range {v28 .. v28}, Lcom/baidu/launcher/ui/homeview/Workspace;->getNextScreen()I

    move-result v20

    .line 1006
    .local v20, page:I
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1007
    .local v15, child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTopPadding()I

    move-result v24

    .line 1008
    .local v24, topPadding:I
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getBottomPadding()I

    move-result v13

    .line 1010
    .local v13, bottomPadding:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mScrollDirection:I

    if-nez v3, :cond_10

    if-lez v20, :cond_10

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v6, v16, v13

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1020
    .end local v13           #bottomPadding:I
    .end local v15           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v16           #height:I
    .end local v20           #page:I
    .end local v24           #topPadding:I
    .end local v27           #width:I
    .end local v28           #workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    :cond_7
    :goto_3
    return-void

    .line 912
    .restart local v11       #bg:Landroid/graphics/drawable/Drawable;
    .restart local v17       #info:Landroid/app/WallpaperInfo;
    .restart local v26       #wallpaperManager:Landroid/app/WallpaperManager;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int v29, v3, v4

    .line 913
    .local v29, workspaceWidth:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    move/from16 v0, v29

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    .line 914
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 915
    .local v14, bw:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 916
    .local v12, bh:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    if-gt v14, v3, :cond_9

    .line 917
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    invoke-virtual {v11, v3, v4, v5, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 925
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 926
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 927
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 919
    :cond_9
    const/16 v18, 0x0

    .line 920
    .local v18, left:I
    if-lez v29, :cond_a

    .line 921
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sub-int v4, v14, v4

    mul-int/2addr v3, v4

    div-int v18, v3, v29

    .line 923
    :cond_a
    const/4 v3, 0x0

    add-int v4, v18, v14

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3, v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 959
    .end local v11           #bg:Landroid/graphics/drawable/Drawable;
    .end local v12           #bh:I
    .end local v14           #bw:I
    .end local v17           #info:Landroid/app/WallpaperInfo;
    .end local v18           #left:I
    .end local v26           #wallpaperManager:Landroid/app/WallpaperManager;
    .end local v29           #workspaceWidth:I
    .restart local v16       #height:I
    .restart local v22       #scrollX:I
    .restart local v23       #scrollY:I
    .restart local v27       #width:I
    .restart local v30       #xPos:I
    .restart local v31       #yPos:I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->needDraw()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 964
    :cond_c
    move/from16 v0, v30

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    add-int v3, v30, v27

    int-to-float v6, v3

    add-int v3, v31, v16

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F

    const/high16 v8, 0x437f

    mul-float/2addr v3, v8

    float-to-int v8, v3

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 965
    move/from16 v0, v30

    int-to-float v3, v0

    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 966
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    sub-float/2addr v3, v4

    move/from16 v0, v27

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    sub-float/2addr v4, v5

    move/from16 v0, v16

    int-to-float v5, v0

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 967
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 968
    if-nez v22, :cond_d

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    instance-of v3, v3, Lcom/baidu/launcher/ui/common/ActionTextView;

    if-eqz v3, :cond_f

    .line 969
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v25, v0

    check-cast v25, Lcom/baidu/launcher/ui/common/ActionTextView;

    .line 970
    .restart local v25       #v:Lcom/baidu/launcher/ui/common/ActionTextView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/baidu/launcher/ui/common/ActionTextView;->setScrollXY(II)V

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->needDraw()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 975
    :cond_e
    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/common/ActionTextView;->setScrollXY(II)V

    goto/16 :goto_2

    .line 978
    .end local v25           #v:Lcom/baidu/launcher/ui/common/ActionTextView;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->needDraw()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 1014
    .end local v22           #scrollX:I
    .end local v23           #scrollY:I
    .end local v30           #xPos:I
    .end local v31           #yPos:I
    .restart local v13       #bottomPadding:I
    .restart local v15       #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .restart local v20       #page:I
    .restart local v24       #topPadding:I
    .restart local v28       #workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mScrollDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual/range {v28 .. v28}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v20

    if-ge v0, v3, :cond_7

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v27, v4

    sub-int v5, v16, v13

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 906
    .end local v13           #bottomPadding:I
    .end local v15           #child:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v16           #height:I
    .end local v20           #page:I
    .end local v24           #topPadding:I
    .end local v27           #width:I
    .end local v28           #workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    .restart local v11       #bg:Landroid/graphics/drawable/Drawable;
    .restart local v17       #info:Landroid/app/WallpaperInfo;
    .restart local v26       #wallpaperManager:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/dragdrop/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[II)F
    .locals 9
    .parameter "descendant"
    .parameter "coord"
    .parameter "deltaY"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 284
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    const/high16 v1, 0x3f80

    .line 286
    .local v1, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 287
    .local v0, pt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 289
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 290
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 292
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 293
    check-cast v2, Landroid/view/View;

    .line 294
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 296
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 297
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 299
    goto :goto_0

    .line 300
    .end local v2           #view:Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 301
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, p3

    aput v4, p2, v8

    .line 306
    .end local v0           #pt:[F
    .end local v1           #scale:F
    .end local v3           #viewParent:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 305
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 306
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 312
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 313
    .local v1, loc:[I
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getLocationInWindow([I)V

    .line 314
    aget v5, v1, v8

    .line 315
    .local v5, x:I
    aget v6, v1, v9

    .line 317
    .local v6, y:I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 318
    aget v3, v1, v8

    .line 319
    .local v3, vX:I
    aget v4, v1, v9

    .line 321
    .local v4, vY:I
    sub-int v0, v3, v5

    .line 322
    .local v0, left:I
    sub-int v2, v4, v6

    .line 323
    .local v2, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    return-void
.end method

.method public hasResizeFrames()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onEnterScrollArea(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->inValidScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1051
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mInScrollArea:Z

    .line 1052
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mScrollDirection:I

    .line 1053
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidate()V

    goto :goto_0
.end method

.method onExitScrollArea()V
    .locals 1

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->inValidScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mInScrollArea:Z

    .line 1059
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidate()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->clearAllResizeFrames()V

    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 207
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 208
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getChildCount()I

    move-result v1

    .line 209
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 210
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 213
    check-cast v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;

    .line 214
    .local v4, lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 215
    iget v5, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 209
    .end local v4           #lp:Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 173
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 174
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 176
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 178
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    if-eqz v5, :cond_2

    .line 185
    const/4 v1, 0x1

    .line 186
    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 197
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v4, p1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 188
    :pswitch_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 192
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->commitResizeForDelta(II)V

    .line 193
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mCurrentResizeFrame:Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;

    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawWallpaper(Z)V
    .locals 0
    .parameter "draw"

    .prologue
    .line 1113
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDrawWallpaper:Z

    .line 1114
    return-void
.end method

.method public setPressedOrFocusedIcon(Lcom/baidu/launcher/ui/common/PressedView;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    .line 1033
    .local v0, oldIcon:Lcom/baidu/launcher/ui/common/PressedView;
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    .line 1034
    if-eqz v0, :cond_0

    .line 1035
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidateBubbleTextView(Lcom/baidu/launcher/ui/common/PressedView;)V

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    if-eqz v1, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mPressedOrFocusedIcon:Lcom/baidu/launcher/ui/common/PressedView;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidateBubbleTextView(Lcom/baidu/launcher/ui/common/PressedView;)V

    .line 1040
    :cond_1
    return-void
.end method

.method public setup(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter "viewManager"
    .parameter "controller"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 149
    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    .line 150
    return-void
.end method

.method public unregisterWallpaperReceiver()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    :cond_0
    return-void
.end method

.method public updateWallpaperOffset()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 679
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->interceptUpdateWallpaperOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    sget-boolean v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    if-eqz v4, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 683
    .local v2, token:Landroid/os/IBinder;
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v0, v4, -0x1

    .line 684
    .local v0, count:I
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 685
    iget v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    mul-int v1, v4, v0

    .line 686
    .local v1, range:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 687
    .local v3, wallpaperManager:Landroid/app/WallpaperManager;
    int-to-float v4, v0

    div-float v4, v8, v4

    invoke-virtual {v3, v4, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 688
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_0
.end method

.method public updateWallpaperOffset(Z)V
    .locals 4
    .parameter "slide"

    .prologue
    .line 713
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getBulletinVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int v1, v2, v3

    .line 715
    .local v1, scollRange:I
    if-eqz p1, :cond_0

    .line 716
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    .line 717
    .local v0, currentScreen:I
    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    .line 731
    .end local v0           #currentScreen:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset()V

    .line 732
    return-void

    .line 719
    :cond_0
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    goto :goto_0

    .line 722
    .end local v1           #scollRange:I
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v3, v3, -0x2

    mul-int v1, v2, v3

    .line 723
    .restart local v1       #scollRange:I
    if-eqz p1, :cond_2

    .line 724
    iget-object v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    .line 725
    .restart local v0       #currentScreen:I
    iget v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDisplayWidth:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    goto :goto_0

    .line 727
    .end local v0           #currentScreen:I
    :cond_2
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mWorkspaceScrollX:I

    goto :goto_0
.end method
