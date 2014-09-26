.class public Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
.super Landroid/view/ViewGroup;
.source "ThumbnailGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;,
        Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;,
        Lcom/baidu/launcher/ui/editview/ThumbnailGroup$ThumbnailOvershootInterpolator;
    }
.end annotation


# static fields
.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final INVALID_INDEX:I = -0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final NANOTIME_DIV:F = 1.0E9f

.field static final SCROLLTIMEINTERVAL:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ThumbnailGroup"

.field private static final TOUCH_STATE_DOWN:I = 0x2

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private COLUMN:I

.field private EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

.field private bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private currentDropIndex:I

.field private currentIndex:I

.field private dragging:Z

.field private dropPosition:[I

.field private firstRun:Z

.field private hasAddPage:Z

.field private isHightLight:Z

.field private isScrollByAddItem:Z

.field private isScrollToEnd:Z

.field private isScrollToFirst:Z

.field private lastDropIndex:I

.field private lastMotionTime:J

.field private lastOverIndex:I

.field private listener:Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;

.field private mActivePointerId:I

.field private mCellLayoutHeight:I

.field private mCellLayoutWidth:I

.field private mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mScrollInterpolator:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$ThumbnailOvershootInterpolator;

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothingTime:F

.field private mSpacing:I

.field private mStartClickTime:J

.field private mTempRect:Landroid/graphics/RectF;

.field private mThumbnailInAnimation:Landroid/view/animation/Animation;

.field private mThumbnailOutAnimation:Landroid/view/animation/Animation;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private nextIndex:I

.field private thumbnailHeight:I

.field private thumbnailScale:F

.field private thumbnailWidth:I

.field private updateThumbnailHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 135
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    .line 82
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutWidth:I

    .line 83
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutHeight:I

    .line 84
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    .line 89
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    .line 90
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isHightLight:Z

    .line 91
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->bitmaps:Ljava/util/ArrayList;

    .line 124
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 131
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    .line 148
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    .line 154
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastOverIndex:I

    .line 156
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastDropIndex:I

    .line 159
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->firstRun:Z

    .line 161
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    .line 168
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTempRect:Landroid/graphics/RectF;

    .line 170
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dragging:Z

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTimerHandler:Landroid/os/Handler;

    .line 178
    new-instance v1, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$1;-><init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnailHandler:Landroid/os/Handler;

    .line 213
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollByAddItem:Z

    .line 302
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToFirst:Z

    .line 303
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToEnd:Z

    .line 304
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mStartClickTime:J

    .line 235
    sget-object v1, Lcom/baidu/home2/R$styleable;->ThumbnailGroup:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    .line 238
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->setHapticFeedbackEnabled(Z)V

    .line 239
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->initThumbnailSpace()V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method private callInstanceMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "aObject"
    .parameter "className"
    .parameter "methodName"

    .prologue
    .line 1848
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1849
    .local v0, aClass:Ljava/lang/Class;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1850
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    .end local v0           #aClass:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1851
    :catch_0
    move-exception v1

    .line 1852
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ThumbnailGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detail info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private canDrop(Ljava/lang/Object;I)Z
    .locals 7
    .parameter "dragInfo"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1417
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-le p2, v6, :cond_0

    .line 1432
    :goto_0
    return v4

    .line 1419
    :cond_0
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne p2, v6, :cond_1

    move v4, v5

    .line 1420
    goto :goto_0

    .line 1421
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1423
    .local v1, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v6, 0x2

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 1424
    .local v3, spans:[I
    instance-of v6, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v6, :cond_3

    move-object v2, p1

    .line 1425
    check-cast v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 1426
    .local v2, info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v6, v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    aput v6, v3, v4

    .line 1427
    iget v6, v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    aput v6, v3, v5

    .line 1432
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v6, v4, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getSlotForSpan([III)Z

    move-result v4

    goto :goto_0

    .line 1428
    :cond_3
    instance-of v6, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 1429
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1430
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v3

    goto :goto_1

    .line 1423
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createInAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    .line 1357
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1358
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailInAnimation:Landroid/view/animation/Animation;

    .line 1361
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1367
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private createOutAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v8, 0x3f80

    const/4 v2, 0x0

    .line 1373
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1374
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailOutAnimation:Landroid/view/animation/Animation;

    .line 1377
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1380
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mThumbnailOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private findScreenForDrop(I[I[I)Lcom/baidu/launcher/ui/homeview/CellLayout;
    .locals 10
    .parameter "dropIndex"
    .parameter "dropPosition"
    .parameter "spans"

    .prologue
    .line 1729
    const/4 v1, 0x0

    .line 1731
    .local v1, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v0, 0x0

    .line 1732
    .local v0, canDrop:Z
    const/4 v3, 0x0

    .line 1733
    .local v3, leftEnd:Z
    const/4 v7, 0x0

    .line 1734
    .local v7, rightEnd:Z
    const/4 v6, -0x1

    .line 1735
    .local v6, ratio:I
    const/4 v5, 0x0

    .line 1736
    .local v5, offsetAbs:I
    const/4 v4, 0x0

    .line 1737
    .local v4, offset:I
    const/4 v2, 0x0

    .line 1741
    .local v2, i:I
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isInThumbList(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1742
    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1745
    .restart local v1       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_0
    if-eqz v1, :cond_1

    const/4 v8, 0x0

    aget v8, p3, v8

    const/4 v9, 0x1

    aget v9, p3, v9

    invoke-virtual {v1, p2, v8, v9}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getSlotForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1747
    const/4 v0, 0x1

    .line 1780
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-eq v8, p1, :cond_2

    .line 1781
    iput p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1783
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1786
    .end local v1           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :goto_0
    return-object v1

    .restart local v1       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVisibleCount()I
    .locals 2

    .prologue
    .line 989
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    if-eqz v1, :cond_1

    .line 990
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v0, v1, 0x1

    .line 994
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 995
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    if-ge v0, v1, :cond_0

    .line 996
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    .line 998
    :cond_0
    return v0

    .line 992
    .end local v0           #count:I
    :cond_1
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .restart local v0       #count:I
    goto :goto_0
.end method

.method private initThumbnailSpace()V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 271
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$ThumbnailOvershootInterpolator;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$ThumbnailOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollInterpolator:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$ThumbnailOvershootInterpolator;

    .line 272
    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollInterpolator:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$ThumbnailOvershootInterpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    .line 273
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 275
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchSlop:I

    .line 276
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mMaximumVelocity:I

    .line 277
    const/4 v2, 0x1

    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    .line 279
    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 280
    return-void
.end method

.method private isApplistCustomSort()Z
    .locals 2

    .prologue
    .line 1489
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInThumbList(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 1791
    if-ltz p1, :cond_0

    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 608
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 609
    .local v1, pointerId:I
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 613
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 614
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionY:F

    .line 616
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    .line 617
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 621
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private snapToScreen(IIZ)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 742
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 743
    iput p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    .line 744
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 746
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 748
    .local v7, screenDelta:I
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    add-int/2addr v0, v1

    mul-int v6, p1, v0

    .line 749
    .local v6, newX:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 750
    .local v3, delta:I
    add-int/lit8 v0, v7, 0x1

    mul-int/lit8 v5, v0, 0x64

    .line 752
    .local v5, duration:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 756
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 757
    if-lez p2, :cond_1

    .line 758
    int-to-float v0, v5

    int-to-float v1, v5

    int-to-float v4, p2

    const v8, 0x451c4000

    div-float/2addr v4, v8

    div-float/2addr v1, v4

    const v4, 0x3ecccccd

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 764
    :goto_0
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->awakenScrollBars(I)Z

    .line 765
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 766
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->invalidate()V

    .line 767
    return-void

    .line 761
    :cond_1
    add-int/lit8 v5, v5, 0x64

    goto :goto_0
.end method

.method private updateCurrenForDragover()V
    .locals 3

    .prologue
    .line 1338
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1339
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-ne v0, v1, :cond_0

    const v1, 0x7f020135

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    :cond_0
    const v1, 0x7f020134

    goto :goto_1

    .line 1344
    :cond_1
    return-void
.end method

.method private updateCurrentDropView()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    .line 1273
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dragging:Z

    if-eqz v4, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 1277
    .local v2, screenCount:I
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    if-ge v4, v6, :cond_2

    .line 1278
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    .line 1282
    .local v3, visibleCount:I
    :goto_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 1283
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    if-eqz v4, :cond_3

    .line 1284
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_3

    .line 1285
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020005

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1280
    .end local v1           #i:I
    .end local v3           #visibleCount:I
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v3

    .restart local v3       #visibleCount:I
    goto :goto_1

    .line 1293
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f020134

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1295
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f080116

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1296
    .local v0, deleteImage:Landroid/widget/ImageView;
    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-ne v1, v4, :cond_5

    iget-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isHightLight:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1297
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 1298
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1282
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v4, v5

    .line 1296
    goto :goto_3
.end method

.method private updateIndicator(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 802
    if-le p1, v1, :cond_0

    move v0, v1

    .line 806
    .local v0, enable:Z
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    move v0, v1

    .line 809
    :goto_1
    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v2

    .line 802
    goto :goto_0

    .restart local v0       #enable:Z
    :cond_1
    move v0, v2

    .line 806
    goto :goto_1
.end method

.method private updateThumbnail(IF)V
    .locals 22
    .parameter "index"
    .parameter "scale"

    .prologue
    .line 848
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 849
    .local v15, r:Landroid/widget/RelativeLayout;
    const v20, 0x7f080114

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 850
    .local v11, imageScreen:Landroid/widget/ImageView;
    const v20, 0x7f080115

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 852
    .local v12, imageSetHome:Landroid/widget/ImageView;
    const v20, 0x7f080116

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 854
    .local v10, imageDelete:Landroid/widget/ImageView;
    if-nez v11, :cond_0

    .line 952
    :goto_0
    return-void

    .line 857
    :cond_0
    sget v19, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 858
    .local v19, screenCount:I
    if-nez p1, :cond_1

    .line 859
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 863
    :cond_1
    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 864
    const v9, 0x7f02017b

    .line 865
    .local v9, hd:I
    sget v20, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 867
    .local v16, res:Landroid/content/res/Resources;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "h"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, p1, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, dName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v13

    .line 869
    .local v13, packageName:Ljava/lang/String;
    const-string v20, "drawable"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 871
    .end local v8           #dName:Ljava/lang/String;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v16           #res:Landroid/content/res/Resources;
    :cond_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 880
    .local v14, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 882
    .local v7, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 883
    .local v18, sWidth:I
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 884
    .local v17, sHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    .line 885
    .local v4, bWidth:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    .line 889
    .local v3, bHeight:I
    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 890
    .local v2, b:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_5

    .line 891
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 892
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_3

    .line 893
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 900
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->bitmaps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 913
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 915
    .local v6, c:Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 916
    sub-int v20, v4, v18

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-int v21, v3, v17

    mul-int/lit8 v21, v21, 0x2

    div-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 917
    move/from16 v0, p2

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 918
    invoke-virtual {v7, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 919
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 920
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 922
    sget v20, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const v20, 0x7f020167

    :goto_2
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 925
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 931
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 936
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 897
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #c:Landroid/graphics/Canvas;
    :cond_5
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 922
    .restart local v6       #c:Landroid/graphics/Canvas;
    :cond_6
    const v20, 0x7f020166

    goto :goto_2

    .line 937
    .end local v2           #b:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #bHeight:I
    .end local v4           #bWidth:I
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #c:Landroid/graphics/Canvas;
    .end local v7           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v9           #hd:I
    .end local v14           #padding:Landroid/graphics/Rect;
    .end local v17           #sHeight:I
    .end local v18           #sWidth:I
    :cond_7
    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v20, 0xa

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 939
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 942
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 943
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 944
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 947
    :cond_8
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 948
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method acceptDrop(Ljava/lang/Object;I)Z
    .locals 5
    .parameter "dragInfo"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1404
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->canDrop(Ljava/lang/Object;I)Z

    move-result v0

    .line 1405
    .local v0, accept:Z
    if-nez v0, :cond_0

    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge p2, v2, :cond_0

    .line 1406
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    const v3, 0x7f0c004d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1408
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x51

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1409
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1410
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTimerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1413
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    return v0
.end method

.method public changeDropThumbnail(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 955
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-ne p1, v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 960
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 962
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 963
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 970
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    .line 972
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollByAddItem:Z

    .line 973
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    if-ge v0, v1, :cond_3

    .line 974
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    goto :goto_0

    .line 976
    :cond_3
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    .line 977
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    goto :goto_0

    .line 979
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    goto :goto_0

    .line 983
    :cond_5
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    goto :goto_0
.end method

.method public clearBitmap()V
    .locals 2

    .prologue
    .line 1840
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1841
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1844
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const v7, 0x4e6e6b28

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 308
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    int-to-float v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    .line 310
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v5, v7

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    .line 311
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollY:I

    .line 312
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->postInvalidate()V

    .line 313
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    if-gez v5, :cond_0

    .line 314
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToFirst:Z

    .line 315
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 316
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToEnd:Z

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    if-eq v5, v10, :cond_6

    .line 319
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    .line 321
    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->setCurrentScreen(I)V

    .line 322
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 324
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    sput v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    .line 325
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollByAddItem:Z

    if-nez v5, :cond_4

    .line 327
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 328
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToFirst:Z

    if-eqz v5, :cond_3

    .line 329
    iput v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 330
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToFirst:Z

    .line 332
    :cond_3
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToEnd:Z

    if-eqz v5, :cond_4

    .line 333
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    if-ge v5, v6, :cond_5

    .line 334
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 338
    :goto_1
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollToEnd:Z

    .line 341
    :cond_4
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 342
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isScrollByAddItem:Z

    .line 343
    iput v10, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    goto :goto_0

    .line 336
    :cond_5
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    goto :goto_1

    .line 344
    :cond_6
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    if-ne v5, v9, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v5, v5

    div-float v3, v5, v7

    .line 346
    .local v3, now:F
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    sub-float v5, v3, v5

    sget v6, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->SMOOTHING_CONSTANT:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 348
    .local v1, e:F
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    int-to-float v6, v6

    sub-float v0, v5, v6

    .line 349
    .local v0, dx:F
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    int-to-float v5, v5

    mul-float v6, v0, v1

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    .line 350
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    .line 353
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    div-int/lit8 v6, v6, 0x3

    sub-int v2, v5, v6

    .line 354
    .local v2, leftEdge:I
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v5

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    div-int/lit8 v6, v6, 0x3

    add-int v4, v5, v6

    .line 356
    .local v4, rightEdge:I
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    if-ge v5, v2, :cond_7

    .line 357
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    .line 359
    :cond_7
    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    if-le v5, v4, :cond_8

    .line 360
    iput v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScrollX:I

    .line 366
    :cond_8
    const/high16 v5, 0x3f80

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_9

    const/high16 v5, -0x4080

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 367
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->postInvalidate()V

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 459
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->firstRun:Z

    if-eqz v4, :cond_0

    .line 460
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 461
    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    iget v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    invoke-virtual {p0, v4, v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->scrollTo(II)V

    .line 462
    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 463
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->firstRun:Z

    .line 465
    :cond_0
    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    if-eq v4, v1, :cond_2

    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    if-ne v4, v7, :cond_2

    .line 470
    .local v1, fastDraw:Z
    :goto_0
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/lit8 v2, v3, -0x2

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_3

    .line 471
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 470
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v1           #fastDraw:Z
    .end local v2           #i:I
    :cond_2
    move v1, v3

    .line 465
    goto :goto_0

    .line 505
    .restart local v1       #fastDraw:Z
    .restart local v2       #i:I
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 509
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 510
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    if-lez v1, :cond_1

    .line 511
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    .line 520
    :goto_0
    return v0

    .line 514
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 515
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v2

    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 516
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method done()V
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastDropIndex:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 1354
    return-void
.end method

.method protected getAnimData(I)Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    .locals 11
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1113
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 1114
    iget p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1117
    .local v4, v:Landroid/view/View;
    new-instance v3, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v3}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    .line 1118
    .local v3, sd:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    if-eqz v4, :cond_1

    .line 1119
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 1120
    .local v1, loc:[I
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1121
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v1, v7

    int-to-float v5, v5

    aget v6, v1, v10

    int-to-float v6, v6

    aget v7, v1, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    aget v8, v1, v10

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1123
    .local v2, rect:Landroid/graphics/RectF;
    iput-boolean v10, v3, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showAnim:Z

    .line 1124
    new-instance v0, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;

    invoke-direct {v0}, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;-><init>()V

    .line 1125
    .local v0, extra:Lcom/baidu/launcher/data/item/HomeViewAnimationPara;
    iput-object v2, v0, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;->rect:Landroid/graphics/RectF;

    .line 1126
    iput p1, v0, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;->screen:I

    .line 1127
    iput-object v0, v3, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showExtra:Ljava/lang/Object;

    .line 1129
    .end local v0           #extra:Lcom/baidu/launcher/data/item/HomeViewAnimationPara;
    .end local v1           #loc:[I
    .end local v2           #rect:Landroid/graphics/RectF;
    :cond_1
    return-object v3
.end method

.method getAutoScrollIndex(I)I
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 1393
    const v2, 0x7f080112

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 1395
    .local v0, orientation:I
    :goto_0
    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    add-int/2addr v1, v0

    :goto_1
    return v1

    .line 1393
    .end local v0           #orientation:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1395
    .restart local v0       #orientation:I
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public getCurrentDropPage()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    return v0
.end method

.method public getDestopPosition(Landroid/view/View;Ljava/lang/Object;[II)F
    .locals 24
    .parameter "v"
    .parameter "dragInfo"
    .parameter "itemCell"
    .parameter "dropIndex"

    .prologue
    .line 1615
    const/4 v2, 0x0

    .line 1616
    .local v2, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1617
    .local v14, tmpDropIndex:I
    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 1618
    .local v13, spans:[I
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v3, :cond_5

    move-object/from16 v10, p2

    .line 1619
    check-cast v10, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 1620
    .local v10, info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    const/4 v3, 0x0

    iget v4, v10, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    aput v4, v13, v3

    .line 1621
    const/4 v3, 0x1

    iget v4, v10, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    aput v4, v13, v3

    .line 1628
    .end local v10           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move/from16 v20, v0

    .line 1629
    .local v20, widget:Z
    if-eqz v20, :cond_1

    move-object/from16 v10, p2

    .line 1630
    check-cast v10, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 1631
    .restart local v10       #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    const/4 v3, 0x0

    iget v4, v10, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    aput v4, v13, v3

    .line 1632
    const/4 v3, 0x1

    iget v4, v10, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    aput v4, v13, v3

    .line 1635
    .end local v10           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v3, v13}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->findScreenForDrop(I[I[I)Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-result-object v2

    .line 1637
    if-eqz v2, :cond_6

    .line 1662
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1663
    .local v16, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-eq v3, v14, :cond_2

    .line 1664
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 1665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    check-cast v2, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1670
    .restart local v2       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    aput v4, p3, v3

    .line 1671
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, p3, v3

    .line 1672
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, p3, v3

    .line 1674
    const/4 v15, 0x1

    .line 1675
    .local v15, vh:I
    const/16 v19, 0x1

    .line 1676
    .local v19, vw:I
    if-eqz p1, :cond_3

    .line 1677
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 1678
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 1681
    :cond_3
    move/from16 v17, v15

    .line 1682
    .local v17, viewHeight:I
    move/from16 v18, v19

    .line 1683
    .local v18, viewWidth:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    .line 1684
    .local v12, scale:F
    const/4 v3, 0x2

    new-array v11, v3, [I

    .line 1686
    .local v11, pos:[I
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1687
    const/4 v3, 0x0

    aget v21, v11, v3

    .line 1688
    .local v21, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getWidth()I

    move-result v9

    .line 1689
    .local v9, dragLayerWidth:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    if-ne v3, v4, :cond_4

    shr-int/lit8 v3, v9, 0x1

    move/from16 v0, v21

    if-le v0, v3, :cond_4

    .line 1691
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    sub-int v3, v9, v3

    shr-int/lit8 v21, v3, 0x1

    .line 1694
    :cond_4
    const/4 v3, 0x1

    aget v22, v11, v3

    .line 1696
    .local v22, y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToPoint(II[I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    move/from16 v23, v0

    mul-float v7, v7, v23

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v3, v4

    .line 1700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v4, 0x1

    move/from16 v0, v22

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    move/from16 v23, v0

    mul-float v7, v7, v23

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v3, v4

    .line 1704
    const/4 v3, 0x1

    aget v3, p3, v3

    const/4 v4, 0x2

    aget v4, p3, v4

    const/4 v5, 0x0

    aget v5, v13, v5

    const/4 v6, 0x1

    aget v6, v13, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    mul-float/2addr v3, v4

    move/from16 v0, v18

    int-to-float v4, v0

    div-float v12, v3, v4

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v12

    move/from16 v0, v18

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    move/from16 v23, v0

    mul-float v7, v7, v23

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v12

    sub-float v7, v7, v23

    const/high16 v23, 0x4000

    div-float v7, v7, v23

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v12

    move/from16 v0, v17

    int-to-float v7, v0

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    move/from16 v23, v0

    mul-float v7, v7, v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v12

    sub-float v7, v7, v23

    const/high16 v23, 0x4000

    div-float v7, v7, v23

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 1720
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, p3, v3

    .line 1721
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, p3, v3

    .line 1724
    .end local v9           #dragLayerWidth:I
    .end local v11           #pos:[I
    .end local v12           #scale:F
    .end local v15           #vh:I
    .end local v16           #view:Landroid/view/View;
    .end local v17           #viewHeight:I
    .end local v18           #viewWidth:I
    .end local v19           #vw:I
    .end local v21           #x:I
    .end local v22           #y:I
    :goto_1
    return v12

    .line 1622
    .end local v20           #widget:Z
    :cond_5
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    move-object/from16 v8, p2

    .line 1623
    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1624
    .local v8, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v13

    goto/16 :goto_0

    .line 1724
    .end local v8           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v20       #widget:Z
    :cond_6
    const/high16 v12, -0x4080

    goto :goto_1

    .line 1617
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getEditViewIndicator()Lcom/baidu/launcher/ui/editview/EditViewIndicator;
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    return-object v0
.end method

.method getThumbnailHeight()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    return v0
.end method

.method getThumbnailScale()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    return v0
.end method

.method getThumbnailWidth()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    return v0
.end method

.method public initForApplist()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1244
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isHightLight:Z

    .line 1245
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    .line 1246
    return-void
.end method

.method public isHasAddPage()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    return v0
.end method

.method isValidIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 1400
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 375
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->computeScroll()V

    .line 376
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 1003
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    monitor-enter v7

    .line 1004
    :try_start_0
    iget-wide v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mStartClickTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    .line 1005
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mStartClickTime:J

    .line 1014
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    const/4 v2, -0x1

    .line 1016
    .local v2, index:I
    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 1017
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .line 1018
    .local v3, screenCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1019
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1020
    .local v0, child:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v12, :cond_0

    .line 1021
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1018
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1007
    .end local v0           #child:Landroid/widget/RelativeLayout;
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #screenCount:I
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1008
    .local v4, tempTime:J
    iget-wide v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mStartClickTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x3e8

    cmp-long v6, v8, v10

    if-gez v6, :cond_3

    .line 1009
    monitor-exit v7

    .line 1110
    .end local v4           #tempTime:J
    :cond_2
    :goto_2
    return-void

    .line 1011
    .restart local v4       #tempTime:J
    :cond_3
    iput-wide v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mStartClickTime:J

    goto :goto_0

    .line 1014
    .end local v4           #tempTime:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1024
    .restart local v1       #i:I
    .restart local v2       #index:I
    .restart local v3       #screenCount:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 1049
    :pswitch_0
    if-ge v2, v3, :cond_6

    .line 1051
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-ne v2, v6, :cond_2

    .line 1084
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v6}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v6

    const v7, 0x7f08013a

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getAnimData(I)Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    goto :goto_2

    .line 1027
    :pswitch_1
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-ne v2, v6, :cond_2

    .line 1028
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v7}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 1030
    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    goto :goto_2

    .line 1034
    :pswitch_2
    if-lez v2, :cond_2

    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-gt v2, v6, :cond_2

    .line 1035
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v6, v13, :cond_2

    .line 1038
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScreenEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1039
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViewFromEditView(I)V

    goto :goto_2

    .line 1041
    :cond_5
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/editview/EditView;->buildUpAlertDialog(I)V

    goto :goto_2

    .line 1091
    :cond_6
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne v2, v6, :cond_2

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-ne v2, v6, :cond_2

    .line 1092
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v6}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->addScreen()V

    .line 1093
    const/16 v6, 0x9

    if-ne v2, v6, :cond_8

    .line 1094
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    .line 1095
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 1101
    :goto_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_7

    .line 1102
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 1104
    :cond_7
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 1105
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1106
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    goto/16 :goto_2

    .line 1097
    :cond_8
    iput-boolean v13, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    .line 1098
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 1099
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    goto :goto_3

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x7f080114
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onDragExit()V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1443
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastOverIndex:I

    .line 1444
    return-void
.end method

.method onDragOver(IILjava/lang/Object;)I
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"

    .prologue
    const/4 v9, 0x0

    .line 1447
    const/4 v4, -0x1

    .line 1448
    .local v4, onIndex:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1449
    .local v5, r:Landroid/graphics/Rect;
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 1450
    .local v1, coordinates:[I
    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->nextIndex:I

    .line 1451
    .local v3, index:I
    :goto_0
    move v2, v3

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    add-int/2addr v7, v3

    if-ge v2, v7, :cond_0

    .line 1452
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1453
    .local v6, relativeLayout:Landroid/widget/RelativeLayout;
    const v7, 0x7f080114

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1456
    .local v0, child:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1457
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1458
    aget v7, v1, v9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1459
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1460
    move v4, v2

    .line 1461
    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastOverIndex:I

    if-ne v7, v4, :cond_2

    .line 1484
    .end local v0           #child:Landroid/widget/ImageView;
    .end local v6           #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_0
    :goto_2
    iput v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastOverIndex:I

    .line 1485
    return v4

    .line 1450
    .end local v2           #i:I
    .end local v3           #index:I
    :cond_1
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    goto :goto_0

    .line 1465
    .restart local v0       #child:Landroid/widget/ImageView;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v6       #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isApplistCustomSort()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v2, v7, :cond_0

    .line 1467
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTimerHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1468
    new-instance v7, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    invoke-direct {v7, p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;-><init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;Landroid/view/View;)V

    iput-object v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    .line 1469
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTimerHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    const-wide/16 v9, 0x320

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1470
    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    if-eq v2, v7, :cond_0

    .line 1471
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1472
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrenForDragover()V

    goto :goto_2

    .line 1451
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method onDrop(Ljava/lang/Object;I)V
    .locals 9
    .parameter "dragInfo"
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1536
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTimerHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->EnterHomeRunnable:Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1537
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne p2, v4, :cond_2

    iget-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    if-eqz v4, :cond_2

    .line 1539
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v4}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->addScreen()V

    .line 1541
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1542
    .local v3, span:[I
    instance-of v4, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 1543
    check-cast v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 1544
    .local v2, info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v4, v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    aput v4, v3, v7

    .line 1545
    iget v4, v2, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    aput v4, v3, v8

    .line 1551
    .end local v2           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1554
    .local v1, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    aget v5, v3, v7

    aget v6, v3, v8

    invoke-virtual {v1, v4, v5, v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getSlotForSpan([III)Z

    .line 1555
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p2, v4, :cond_1

    .line 1556
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(I)V

    .line 1558
    :cond_1
    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 1560
    .end local v1           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v3           #span:[I
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dropPosition:[I

    aget v6, v6, v8

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->processAddItem(Ljava/lang/Object;III)V

    .line 1562
    iput p2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastDropIndex:I

    .line 1563
    iput p2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1564
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 1567
    return-void

    .line 1546
    .restart local v3       #span:[I
    :cond_3
    instance-of v4, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 1547
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1548
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v3

    goto :goto_0

    .line 1541
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 244
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 245
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 246
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 247
    .local v0, child:Landroid/widget/RelativeLayout;
    const v5, 0x7f080114

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 249
    .local v3, imageScreen:Landroid/widget/ImageView;
    const v5, 0x7f080115

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 251
    .local v4, imageSetHome:Landroid/widget/ImageView;
    const v5, 0x7f080116

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 253
    .local v2, imageDelete:Landroid/widget/ImageView;
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0           #child:Landroid/widget/RelativeLayout;
    .end local v2           #imageDelete:Landroid/widget/ImageView;
    .end local v3           #imageScreen:Landroid/widget/ImageView;
    .end local v4           #imageSetHome:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method onHide()V
    .locals 2

    .prologue
    .line 1347
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastOverIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onDragExit()V

    .line 1350
    :cond_0
    return-void
.end method

.method public onHideThumbnail()V
    .locals 2

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->createOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1270
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 526
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    if-eqz v9, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v11

    .line 531
    :cond_1
    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_2

    .line 532
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 535
    :cond_2
    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_3

    .line 536
    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 539
    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 603
    :cond_4
    :goto_1
    :pswitch_0
    iget v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    if-nez v9, :cond_0

    move v11, v10

    goto :goto_0

    .line 541
    :pswitch_1
    iget v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 542
    .local v1, pointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 543
    .local v3, x:F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 544
    .local v6, y:F
    iget v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 545
    .local v4, xDiff:I
    iget v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 547
    .local v7, yDiff:I
    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchSlop:I

    .line 548
    .local v2, touchSlop:I
    if-le v4, v2, :cond_6

    move v5, v11

    .line 549
    .local v5, xMoved:Z
    :goto_2
    if-le v7, v2, :cond_7

    move v8, v11

    .line 551
    .local v8, yMoved:Z
    :goto_3
    if-nez v5, :cond_5

    if-eqz v8, :cond_4

    .line 553
    :cond_5
    if-eqz v5, :cond_4

    .line 555
    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 556
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    .line 557
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    .line 558
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    long-to-float v9, v12

    const v12, 0x4e6e6b28

    div-float/2addr v9, v12

    iput v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    goto :goto_1

    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_6
    move v5, v10

    .line 548
    goto :goto_2

    .restart local v5       #xMoved:Z
    :cond_7
    move v8, v10

    .line 549
    goto :goto_3

    .line 565
    .end local v1           #pointerIndex:I
    .end local v2           #touchSlop:I
    .end local v3           #x:F
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v6           #y:F
    .end local v7           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 566
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 568
    .restart local v6       #y:F
    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    .line 569
    iput v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionY:F

    .line 570
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    .line 577
    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v10

    :goto_4
    iput v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    goto :goto_1

    :cond_8
    move v9, v11

    goto :goto_4

    .line 584
    .end local v3           #x:F
    .end local v6           #y:F
    :pswitch_3
    iput v10, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 585
    const/4 v9, -0x1

    iput v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    .line 587
    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_4

    .line 588
    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 589
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 595
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v3

    .line 434
    .local v3, count:I
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    if-eqz v6, :cond_1

    .line 435
    sget v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v5, v6, 0x1

    .line 439
    .local v5, visibleCount:I
    :goto_0
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 441
    const/16 v6, 0x1a

    iput v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    .line 443
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    .line 446
    .local v1, childLeft:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 447
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 450
    .local v2, childWidth:I
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mPaddingTop:I

    add-int v7, v1, v2

    iget v8, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 452
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    add-int/2addr v6, v2

    add-int/2addr v1, v6

    .line 446
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 437
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLeft:I
    .end local v4           #i:I
    .end local v5           #visibleCount:I
    :cond_1
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    .restart local v5       #visibleCount:I
    goto :goto_0

    .line 455
    .restart local v1       #childLeft:I
    .restart local v4       #i:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 381
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 382
    .local v9, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 385
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 387
    .local v7, heightMode:I
    if-eqz v10, :cond_0

    if-nez v7, :cond_1

    .line 389
    :cond_0
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "ThumbnailGroup cannot have UNSPECIFIED dimensions"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isApplistCustomSort()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 393
    iget v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutHeight:I

    if-nez v11, :cond_2

    .line 394
    iget-object v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v11}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 395
    .local v1, cellCount:I
    iget-object v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v11}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v11

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v11, v12}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 397
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v11

    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutWidth:I

    .line 398
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeight()I

    move-result v11

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getBottomPadding()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutHeight:I

    .line 400
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #cellCount:I
    :cond_2
    iget v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mPaddingTop:I

    sub-int v3, p2, v11

    .line 401
    .local v3, childHeight:I
    iget v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutWidth:I

    mul-int/2addr v11, v3

    iget v12, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mCellLayoutHeight:I

    div-int v4, v11, v12

    .line 402
    .local v4, childWidth:I
    const/high16 v11, 0x4000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 404
    .local v5, childWidthMeasureSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v6

    .line 405
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_3

    .line 406
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v5, v3}, Landroid/view/View;->measure(II)V

    .line 405
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 409
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 410
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    .line 411
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    .line 427
    .end local v3           #childHeight:I
    :goto_1
    return-void

    .line 413
    .end local v2           #child:Landroid/view/View;
    .end local v4           #childWidth:I
    .end local v5           #childWidthMeasureSpec:I
    .end local v6           #count:I
    .end local v8           #i:I
    :cond_4
    mul-int/lit8 v11, v9, 0x4

    div-int/lit8 v4, v11, 0x5

    .line 415
    .restart local v4       #childWidth:I
    const/high16 v11, 0x4000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 418
    .restart local v5       #childWidthMeasureSpec:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v6

    .line 419
    .restart local v6       #count:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    if-ge v8, v6, :cond_5

    .line 420
    invoke-virtual {p0, v8}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget v12, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mPaddingTop:I

    sub-int v12, p2, v12

    invoke-virtual {v11, v5, v12}, Landroid/view/View;->measure(II)V

    .line 419
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 423
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 424
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    .line 425
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iput v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    goto :goto_1
.end method

.method public onShow()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1193
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v1

    .line 1194
    .local v1, index:I
    iput v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1195
    iput v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastDropIndex:I

    .line 1196
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v2

    .line 1197
    .local v2, mIndicatorCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1198
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->removeViewAt(I)V

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    :cond_0
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne v3, v7, :cond_1

    .line 1201
    const/4 v0, 0x0

    :goto_1
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 1202
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addScreen()V

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1205
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v0, v3, :cond_2

    .line 1206
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addScreen()V

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1210
    :cond_2
    if-gez v1, :cond_3

    .line 1211
    const/4 v1, 0x0

    .line 1213
    :cond_3
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_4

    .line 1214
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v3

    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int v1, v3, v4

    .line 1216
    :cond_4
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne v3, v7, :cond_5

    .line 1217
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    .line 1221
    :goto_3
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    .line 1222
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    mul-int/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->scrollTo(II)V

    .line 1223
    iget v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 1225
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 1226
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v3, v1}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->setCurrentScreen(I)V

    .line 1233
    return-void

    .line 1219
    :cond_5
    iput-boolean v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    goto :goto_3
.end method

.method public onShowNoHightlignt()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1249
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    .line 1251
    .local v0, index:I
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentDropIndex:I

    .line 1252
    iput v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastOverIndex:I

    .line 1253
    iput v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastDropIndex:I

    .line 1254
    add-int/lit8 v0, v0, -0x1

    .line 1255
    if-gez v0, :cond_0

    .line 1256
    const/4 v0, 0x0

    .line 1258
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 1259
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int v0, v1, v2

    .line 1261
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    .line 1262
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->scrollTo(II)V

    .line 1263
    iget v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 1264
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 1265
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->createInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1266
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1189
    .end local p1
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    .restart local p1
    :pswitch_0
    move-object v10, p1

    .line 1149
    check-cast v10, Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getAutoScrollIndex(I)I

    move-result v6

    .line 1151
    .local v6, index:I
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isValidIndex(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1152
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    .line 1154
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastMotionTime:J

    goto :goto_0

    .line 1157
    .end local v6           #index:I
    :pswitch_1
    const/16 v4, 0xa

    .line 1159
    .local v4, expand:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1160
    .local v8, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1161
    .local v9, y:F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 1162
    .local v7, w:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1163
    .local v5, h:I
    const/high16 v10, -0x3ee0

    cmpg-float v10, v8, v10

    if-ltz v10, :cond_2

    const/high16 v10, -0x3ee0

    cmpg-float v10, v9, v10

    if-ltz v10, :cond_2

    add-int/lit8 v10, v7, 0xa

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-gtz v10, :cond_2

    add-int/lit8 v10, v5, 0xa

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-lez v10, :cond_3

    .line 1167
    :cond_2
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1169
    .restart local p1
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1170
    .local v0, current:J
    iget-wide v10, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastMotionTime:J

    sub-long v2, v0, v10

    .line 1171
    .local v2, deltaTime:J
    const-wide/16 v10, 0x12c

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    .line 1174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getAutoScrollIndex(I)I

    move-result v6

    .line 1175
    .restart local v6       #index:I
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->isValidIndex(I)Z

    move-result v10

    if-eqz v10, :cond_4

    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    iget v11, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v10, v11

    if-gt v6, v10, :cond_4

    .line 1178
    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    .line 1180
    :cond_4
    iput-wide v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->lastMotionTime:J

    goto :goto_0

    .line 1186
    .end local v0           #current:J
    .end local v2           #deltaTime:J
    .end local v4           #expand:I
    .end local v5           #h:I
    .end local v6           #index:I
    .end local v7           #w:I
    .end local v8           #x:F
    .end local v9           #y:F
    :pswitch_2
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 1147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_0

    .line 626
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 628
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 632
    .local v1, action:I
    and-int/lit16 v13, v1, 0xff

    packed-switch v13, :pswitch_data_0

    .line 734
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v13, 0x1

    return v13

    .line 638
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->isFinished()Z

    move-result v13

    if-nez v13, :cond_2

    .line 639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->abortAnimation()V

    .line 644
    :cond_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    .line 648
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    goto :goto_0

    .line 652
    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 655
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 656
    .local v4, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 657
    .local v12, x:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    sub-float v3, v13, v12

    .line 658
    .local v3, deltaX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    int-to-float v11, v13

    .line 660
    .local v11, width:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 662
    :cond_4
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 663
    move-object/from16 v0, p0

    iput v12, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mLastMotionX:F

    .line 664
    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gez v13, :cond_7

    .line 665
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 666
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    neg-float v14, v14

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    .line 670
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    long-to-float v13, v13

    const v14, 0x4e6e6b28

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->invalidate()V

    goto/16 :goto_0

    .line 667
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    const/high16 v14, 0x4040

    div-float v14, v11, v14

    sub-float v14, v11, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    .line 668
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    const/high16 v14, 0x4040

    div-float v14, v11, v14

    sub-float v14, v11, v14

    const/high16 v15, 0x4040

    div-float v15, v3, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    goto :goto_1

    .line 672
    :cond_7
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-lez v13, :cond_a

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v5, v13

    .line 675
    .local v5, rightEdge:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    cmpg-float v13, v13, v5

    if-gez v13, :cond_9

    .line 676
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    sub-float v14, v5, v14

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    .line 680
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    long-to-float v13, v13

    const v14, 0x4e6e6b28

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->invalidate()V

    goto/16 :goto_0

    .line 677
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    const/high16 v14, 0x4040

    div-float v14, v11, v14

    add-float/2addr v14, v5

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    .line 678
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    const/high16 v14, 0x4040

    div-float v14, v11, v14

    const/high16 v15, 0x4040

    div-float v15, v3, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    goto :goto_2

    .line 683
    .end local v5           #rightEdge:F
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 689
    .end local v3           #deltaX:F
    .end local v4           #pointerIndex:I
    .end local v11           #width:F
    .end local v12           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 690
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 691
    .local v8, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 692
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v13

    float-to-int v9, v13

    .line 694
    .local v9, velocityX:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSpacing:I

    add-int v6, v13, v14

    .line 695
    .local v6, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getScrollX()I

    move-result v13

    int-to-double v13, v13

    int-to-double v15, v6

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    add-double/2addr v13, v15

    int-to-double v15, v6

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v10, v13

    .line 698
    .local v10, whichScreen:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v6

    div-float v7, v13, v14

    .line 700
    .local v7, scrolledPos:F
    const/16 v13, 0x258

    if-le v9, v13, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    if-lez v13, :cond_d

    .line 703
    int-to-float v13, v10

    cmpg-float v13, v7, v13

    if-gez v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/lit8 v2, v13, -0x1

    .line 705
    .local v2, bound:I
    :goto_3
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v14}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(IIZ)V

    .line 717
    .end local v2           #bound:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_b

    .line 718
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->recycle()V

    .line 719
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 722
    .end local v6           #screenWidth:I
    .end local v7           #scrolledPos:F
    .end local v8           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v9           #velocityX:I
    .end local v10           #whichScreen:I
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 723
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    goto/16 :goto_0

    .line 703
    .restart local v6       #screenWidth:I
    .restart local v7       #scrolledPos:F
    .restart local v8       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v9       #velocityX:I
    .restart local v10       #whichScreen:I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    goto :goto_3

    .line 706
    :cond_d
    const/16 v13, -0x258

    if-ge v9, v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->COLUMN:I

    sub-int/2addr v14, v15

    if-ge v13, v14, :cond_f

    .line 710
    int-to-float v13, v10

    cmpl-float v13, v7, v13

    if-lez v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    add-int/lit8 v2, v13, 0x1

    .line 712
    .restart local v2       #bound:I
    :goto_5
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v14}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(IIZ)V

    goto :goto_4

    .line 710
    .end local v2           #bound:I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    goto :goto_5

    .line 714
    :cond_f
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v14}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(IIZ)V

    goto :goto_4

    .line 726
    .end local v6           #screenWidth:I
    .end local v7           #scrolledPos:F
    .end local v8           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v9           #velocityX:I
    .end local v10           #whichScreen:I
    :pswitch_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchState:I

    .line 727
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mActivePointerId:I

    goto/16 :goto_0

    .line 730
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public releaseScreenBackgroundBitmap()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1316
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1317
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1318
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080114

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1319
    .local v3, imageScreen:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 1321
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v4

    const-string v5, "android.view.GLES20DisplayList"

    const-string v6, "end"

    invoke-direct {p0, v4, v5, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->callInstanceMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1326
    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v4

    const-string v5, "android.view.GLES20DisplayList"

    const-string v6, "end"

    invoke-direct {p0, v4, v5, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->callInstanceMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1329
    .end local v3           #imageScreen:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1330
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1333
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1334
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1335
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 297
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 298
    int-to-float v0, p1

    iput v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mTouchX:F

    .line 299
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mSmoothingTime:F

    .line 300
    return-void
.end method

.method public setContaniner(Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 1571
    return-void
.end method

.method public setHasAddPage(Z)V
    .locals 0
    .parameter "hasAddPage"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->hasAddPage:Z

    .line 106
    return-void
.end method

.method public setIndicator(Lcom/baidu/launcher/ui/editview/EditViewIndicator;)V
    .locals 3
    .parameter "indicator"

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    .line 1808
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1809
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1810
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addScreen()V

    .line 1809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1813
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v0, v1, :cond_1

    .line 1814
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addScreen()V

    .line 1813
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1819
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    new-instance v2, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;-><init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)V

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->setCallback(Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;)V

    .line 1820
    return-void
.end method

.method public setIndicators(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "thumbnailPrevious"
    .parameter "thumbnailNext"

    .prologue
    .line 798
    iget v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->currentIndex:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateIndicator(I)V

    .line 799
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 738
    invoke-direct {p0, p1, v0, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(IIZ)V

    .line 739
    return-void
.end method

.method public updateStatus(Ljava/lang/Object;Z)V
    .locals 5
    .parameter "dragInfo"
    .parameter "clearStatus"

    .prologue
    .line 1574
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getVisibleCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1576
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1577
    .local v3, r:Landroid/widget/RelativeLayout;
    const v4, 0x7f080114

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1578
    .local v0, child:Landroid/widget/ImageView;
    const v4, 0x7f080115

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1580
    .local v2, imageSetHome:Landroid/widget/ImageView;
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v1, v4, :cond_0

    .line 1581
    if-nez p2, :cond_0

    .line 1574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1607
    .end local v0           #child:Landroid/widget/ImageView;
    .end local v2           #imageSetHome:Landroid/widget/ImageView;
    .end local v3           #r:Landroid/widget/RelativeLayout;
    :cond_1
    if-nez p2, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->dragging:Z

    .line 1608
    if-eqz p2, :cond_2

    .line 1609
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 1611
    :cond_2
    return-void

    .line 1607
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public updateThumbnail(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 820
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    if-nez v6, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateCurrentDropView()V

    .line 824
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 825
    iget-object v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 828
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailWidth:I

    add-int/lit8 v6, v6, -0xa

    int-to-float v4, v6

    .line 829
    .local v4, w:F
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailHeight:I

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 833
    .local v1, h:F
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v5

    .line 834
    .local v5, width:I
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeight()I

    move-result v2

    .line 836
    .local v2, height:I
    int-to-float v6, v5

    div-float v6, v4, v6

    int-to-float v7, v2

    div-float v7, v1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x3f666666

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    .line 838
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v1           #h:F
    .end local v2           #height:I
    .end local v4           #w:F
    .end local v5           #width:I
    :cond_2
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v6

    if-ge p1, v6, :cond_3

    .line 839
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    invoke-direct {p0, p1, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(IF)V

    goto :goto_0

    .line 841
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 842
    iget v6, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->thumbnailScale:F

    invoke-direct {p0, v3, v6}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnail(IF)V

    .line 841
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public workspaceChanged(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateThumbnailHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1801
    const-string v0, "ThumbnailGroup"

    const-string v1, "workspace changed"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    return-void
.end method
