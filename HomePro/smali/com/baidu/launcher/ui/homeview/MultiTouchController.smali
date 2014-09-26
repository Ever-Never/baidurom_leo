.class public Lcom/baidu/launcher/ui/homeview/MultiTouchController;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;,
        Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;,
        Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field private static ACTION_POINTER_UP:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EVENT_SETTLE_TIME_INTERVAL:J = 0x14L

.field private static final MAX_MULTITOUCH_DIM_JUMP_SIZE:F = 40.0f

.field private static final MAX_MULTITOUCH_POS_JUMP_SIZE:F = 30.0f

.field public static final MAX_TOUCH_POINTS:I = 0xa

.field private static final MIN_MULTITOUCH_SEPARATION:F = 30.0f

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_NOTHING:I = 0x0

.field private static final MODE_PINCH:I = 0x2

.field private static m_findPointerIndex:Ljava/lang/reflect/Method;

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z

.field private static final pointerIdxs:[I

.field private static final pressureVals:[F

.field private static final xVals:[F

.field private static final yVals:[F


# instance fields
.field private handleSingleTouchEvents:Z

.field private mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

.field private mCurrPtAng:F

.field private mCurrPtDiam:F

.field private mCurrPtHeight:F

.field private mCurrPtWidth:F

.field private mCurrPtX:F

.field private mCurrPtY:F

.field private mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

.field private mMode:I

.field private mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

.field private mSettleEndTime:J

.field private mSettleStartTime:J

.field private objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startAngleMinusPinchAngle:F

.field private startPosX:F

.field private startPosY:F

.field private startScaleOverPinchDiam:F

.field private startScaleXOverPinchWidth:F

.field private startScaleYOverPinchHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 182
    const/4 v2, 0x6

    sput v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->ACTION_POINTER_UP:I

    .line 183
    const/16 v2, 0x8

    sput v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    .line 186
    const/4 v1, 0x0

    .line 189
    .local v1, succeeded:Z
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 190
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "findPointerIndex"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_findPointerIndex:Ljava/lang/reflect/Method;

    .line 192
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    .line 194
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 196
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 198
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 200
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    .line 201
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const/4 v1, 0x1

    .line 206
    :goto_0
    sput-boolean v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->multiTouchSupported:Z

    .line 207
    sget-boolean v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->multiTouchSupported:Z

    if-eqz v2, :cond_0

    .line 212
    :try_start_1
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_UP"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->ACTION_POINTER_UP:I

    .line 214
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_0
    :goto_1
    new-array v2, v7, [F

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->xVals:[F

    .line 222
    new-array v2, v7, [F

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->yVals:[F

    .line 223
    new-array v2, v7, [F

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pressureVals:[F

    .line 224
    new-array v2, v7, [I

    sput-object v2, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pointerIdxs:[I

    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Launcher.MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    .local p1, objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;-><init>(Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .parameter
    .parameter "handleSingleTouchEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    .local p1, objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 150
    new-instance v0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    .line 151
    new-instance v0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    .line 152
    iput-boolean p2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->handleSingleTouchEvents:Z

    .line 153
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    .line 154
    return-void
.end method

.method private anchorAtThisPositionAndScale()V
    .locals 5

    .prologue
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    const/high16 v2, 0x3f80

    .line 336
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    invoke-interface {v1, v3, v4}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;->getPositionAndScale(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)V

    .line 348
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$000(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    div-float v0, v2, v1

    .line 350
    .local v0, currScaleInv:F
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->extractCurrPtInfo()V

    .line 351
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtX:F

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->xOff:F
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$500(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startPosX:F

    .line 352
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtY:F

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->yOff:F
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$600(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startPosY:F

    .line 353
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$400(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtDiam:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startScaleOverPinchDiam:F

    .line 354
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleX:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$700(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtWidth:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startScaleXOverPinchWidth:F

    .line 355
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleY:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$800(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startScaleYOverPinchHeight:F

    .line 356
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->angle:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$900(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtAng:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startAngleMinusPinchAngle:F

    goto :goto_0

    .line 348
    .end local v0           #currScaleInv:F
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$400(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$400(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v1

    goto :goto_1
.end method

.method private decodeTouchEvent(I[F[F[F[IIZJ)V
    .locals 11
    .parameter "pointerCount"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "pointerIdxs"
    .parameter "action"
    .parameter "down"
    .parameter "eventTime"

    .prologue
    .line 322
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    .line 323
    .local v10, tmp:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    .line 324
    iput-object v10, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    .line 326
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    #calls: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V
    invoke-static/range {v0 .. v9}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->access$300(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    .line 328
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->multiTouchController()V

    .line 329
    return-void
.end method

.method private extractCurrPtInfo()V
    .locals 4

    .prologue
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    const/high16 v3, 0x41f0

    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtX:F

    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtY:F

    .line 74
    const v2, 0x41aa6666

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$000(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtDiam:F

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScaleXY:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$100(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtWidth:F

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScaleXY:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$100(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtHeight:F

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateAngle:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$200(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtAng:F

    .line 88
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchDiameter()F

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    goto :goto_2

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchAngle()F

    move-result v1

    goto :goto_3
.end method

.method private multiTouchController()V
    .locals 7

    .prologue
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    const/4 v1, 0x0

    const/high16 v6, 0x4220

    const/high16 v5, 0x41f0

    const/high16 v4, 0x3f00

    const-wide/16 v2, 0x14

    .line 402
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;->getDraggableObjectAtPoint(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 412
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)V

    .line 413
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 416
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleEndTime:J

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 426
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 433
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 436
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    .line 437
    iget-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleEndTime:J

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto :goto_0

    .line 450
    :cond_3
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->performDragOrPinch()V

    goto :goto_0

    .line 457
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 462
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 463
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;->selectObject(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)V

    goto/16 :goto_0

    .line 467
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 469
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 472
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    .line 473
    iget-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mPrevPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchHeight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    .line 487
    :cond_7
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->anchorAtThisPositionAndScale()V

    .line 488
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    .line 489
    iget-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleEndTime:J

    goto/16 :goto_0

    .line 492
    :cond_8
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->eventTime:J
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->access$1000(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mSettleEndTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    .line 494
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->anchorAtThisPositionAndScale()V

    goto/16 :goto_0

    .line 497
    :cond_9
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->performDragOrPinch()V

    goto/16 :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDragOrPinch()V
    .locals 11

    .prologue
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    const/high16 v7, 0x3f80

    .line 365
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScale:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$000(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    .local v7, currScale:F
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->extractCurrPtInfo()V

    .line 372
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtX:F

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startPosX:F

    mul-float/2addr v8, v7

    sub-float v1, v0, v8

    .line 373
    .local v1, newPosX:F
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtY:F

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startPosY:F

    mul-float/2addr v8, v7

    sub-float v2, v0, v8

    .line 374
    .local v2, newPosY:F
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startScaleOverPinchDiam:F

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtDiam:F

    mul-float v3, v0, v8

    .line 375
    .local v3, newScale:F
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startScaleXOverPinchWidth:F

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtWidth:F

    mul-float v4, v0, v8

    .line 376
    .local v4, newScaleX:F
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startScaleYOverPinchHeight:F

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtHeight:F

    mul-float v5, v0, v8

    .line 377
    .local v5, newScaleY:F
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->startAngleMinusPinchAngle:F

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPtAng:F

    add-float v6, v0, v8

    .line 381
    .local v6, newAngle:F
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->set(FFFFFF)V

    .line 384
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->objectCanvas:Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->selectedObject:Ljava/lang/Object;

    iget-object v9, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrPt:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;

    invoke-interface {v0, v8, v9, v10}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$MultiTouchObjectCanvas;->setPositionAndScale(Ljava/lang/Object;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)Z

    goto :goto_0

    .line 369
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newScale:F
    .end local v4           #newScaleX:F
    .end local v5           #newScaleY:F
    .end local v6           #newAngle:F
    .end local v7           #currScale:F
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$400(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v0

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mCurrXform:Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;

    #getter for: Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->access$400(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F

    move-result v7

    goto :goto_1
.end method


# virtual methods
.method protected getHandleSingleTouchEvents()Z
    .locals 1

    .prologue
    .line 170
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->handleSingleTouchEvents:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 229
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    :try_start_0
    sget-boolean v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->multiTouchSupported:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getPointerCount:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 235
    .local v2, pointerCount:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->handleSingleTouchEvents:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 238
    const/4 v1, 0x0

    .line 310
    .end local v2           #pointerCount:I
    :goto_1
    return v1

    .line 229
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 244
    .restart local v2       #pointerCount:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 245
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    div-int v14, v1, v2

    .line 246
    .local v14, histLen:I
    const/4 v13, 0x0

    .local v13, histIdx:I
    :goto_2
    if-gt v13, v14, :cond_10

    .line 249
    if-ge v13, v14, :cond_4

    const/16 v17, 0x1

    .line 250
    .local v17, processingHist:Z
    :goto_3
    sget-boolean v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->multiTouchSupported:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_8

    .line 258
    :cond_2
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->xVals:[F

    const/4 v4, 0x0

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    :goto_4
    aput v1, v3, v4

    .line 260
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->yVals:[F

    const/4 v4, 0x0

    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    :goto_5
    aput v1, v3, v4

    .line 262
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pressureVals:[F

    const/4 v4, 0x0

    if-eqz v17, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v1

    :goto_6
    aput v1, v3, v4

    .line 291
    :cond_3
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->xVals:[F

    sget-object v4, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->yVals:[F

    sget-object v5, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pressureVals:[F

    sget-object v6, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pointerIdxs:[I

    if-eqz v17, :cond_c

    const/4 v7, 0x2

    :goto_7
    if-eqz v17, :cond_d

    const/4 v8, 0x1

    :goto_8
    if-eqz v17, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v9

    :goto_9
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->decodeTouchEvent(I[F[F[F[IIZJ)V

    .line 246
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 249
    .end local v17           #processingHist:Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 258
    .restart local v17       #processingHist:Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    goto :goto_4

    .line 260
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_5

    .line 262
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    goto :goto_6

    .line 268
    :cond_8
    const/16 v1, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 269
    .local v16, numPointers:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_a
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 270
    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_findPointerIndex:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 272
    .local v18, ptrIdx:I
    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pointerIdxs:[I

    aput v18, v1, v15

    .line 279
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->xVals:[F

    if-eqz v17, :cond_9

    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getHistoricalX:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v15

    .line 282
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->yVals:[F

    if-eqz v17, :cond_a

    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getHistoricalY:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v15

    .line 285
    sget-object v3, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->pressureVals:[F

    if-eqz v17, :cond_b

    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v15

    .line 269
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 279
    :cond_9
    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getX:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 282
    :cond_a
    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getY:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    .line 285
    :cond_b
    sget-object v1, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->m_getPressure:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    .end local v15           #i:I
    .end local v16           #numPointers:I
    .end local v18           #ptrIdx:I
    :cond_c
    move v7, v11

    .line 291
    goto/16 :goto_7

    :cond_d
    const/4 v1, 0x1

    if-eq v11, v1, :cond_e

    const/4 v1, 0x1

    sget v8, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->ACTION_POINTER_INDEX_SHIFT:I

    shl-int/2addr v1, v8

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v11

    sget v8, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->ACTION_POINTER_UP:I

    if-eq v1, v8, :cond_e

    const/4 v1, 0x3

    if-eq v11, v1, :cond_e

    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    goto/16 :goto_9

    .line 306
    .end local v17           #processingHist:Z
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 307
    .end local v2           #pointerCount:I
    .end local v11           #action:I
    .end local v13           #histIdx:I
    .end local v14           #histLen:I
    :catch_0
    move-exception v12

    .line 309
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "Launcher.MultiTouchController"

    const-string v3, "onTouchEvent() failed"

    invoke-static {v1, v3, v12}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 509
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->mMode:I

    .line 510
    return-void
.end method

.method protected setHandleSingleTouchEvents(Z)V
    .locals 0
    .parameter "handleSingleTouchEvents"

    .prologue
    .line 162
    .local p0, this:Lcom/baidu/launcher/ui/homeview/MultiTouchController;,"Lcom/baidu/launcher/ui/homeview/MultiTouchController<TT;>;"
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController;->handleSingleTouchEvents:Z

    .line 163
    return-void
.end method
