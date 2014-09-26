.class public Lcom/inveno/newpiflow/animation/Animation3DBoxControl;
.super Ljava/lang/Object;
.source "Animation3DBoxControl.java"


# static fields
.field private static final MOVE_WITH_FIGER_MAX_DEGREE:F = 90.0f

.field private static final SPRINGBACK_DEGREE:I = 0xa

.field private static final SPRING_RATE:F = 0.4f

.field public static final TAG:Ljava/lang/String; = "Animation3DBoxControl"


# instance fields
.field private accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private currentTab:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private degree:F

.field private hasStartSpringback:Z

.field private isCanMove:Z

.field private layoutmain:Landroid/view/View;

.field private layoutnext:Landroid/view/View;

.field private mCenterX:I

.field private mCenterY:I

.field private mLastMotionY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private perDegree:F

.field private rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

.field private rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

.field private rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

.field private viewGroup:Landroid/view/View;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v1, 0x3f7ae148

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->isCanMove:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->views:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 66
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 67
    new-instance v0, Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterY:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;-><init>(FFFF)V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    .line 68
    new-instance v0, Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterY:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;-><init>(FFFF)V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    .line 69
    new-instance v0, Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterY:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;-><init>(FFFF)V

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;-><init>()V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->setCenterXY(II)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->viewGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Lcom/inveno/newpiflow/animation/Animation3DBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->perDegree:F

    return v0
.end method

.method static synthetic access$500(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->doRotate(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->endRotate()V

    return-void
.end method

.method private doRotate(F)V
    .locals 9
    .parameter "dx"

    .prologue
    const-wide/16 v7, 0x64

    const v3, 0x3f733333

    const/4 v6, 0x1

    const/high16 v5, -0x3d4c

    const/high16 v4, 0x42b4

    .line 345
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    .line 346
    .local v0, xd:F
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 352
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 354
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->viewGroup:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->viewGroup:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 358
    :cond_0
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    iget v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->perDegree:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    div-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    .line 360
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    invoke-virtual {v1, v0, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 361
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    add-float v2, v4, v0

    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 362
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    add-float v2, v5, v0

    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 364
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 366
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 369
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v7, v8}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 370
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v7, v8}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 371
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v7, v8}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 373
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v1, :cond_5

    .line 374
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 377
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v5

    const/high16 v2, -0x3d56

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v6}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 417
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v6}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 418
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v6}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 419
    return-void

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 385
    :cond_3
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v4

    const/high16 v2, 0x42aa

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 389
    :cond_4
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 394
    :cond_5
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v1, v6, :cond_1

    .line 396
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    .line 397
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v5

    const/high16 v2, -0x3d56

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 398
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    :goto_1
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 401
    :cond_6
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 405
    :cond_7
    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v4

    const/high16 v2, 0x42aa

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 406
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 409
    :cond_8
    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private endRotate()V
    .locals 8

    .prologue
    const/high16 v7, 0x42b4

    const/high16 v6, -0x3d4c

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x64

    .line 244
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 245
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 246
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 248
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v1, 0x4234

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    invoke-virtual {v0, v1, v7}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 250
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v6

    invoke-virtual {v0, v1, v4}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 251
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 252
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 254
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 255
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 257
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    :cond_0
    :goto_0
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 266
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-gez v0, :cond_1

    .line 267
    iput v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 324
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->setViewVisibile()V

    .line 326
    iput v4, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    .line 327
    return-void

    .line 260
    :cond_2
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v0, v5, :cond_0

    .line 261
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 269
    :cond_3
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v1, -0x3dcc

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    invoke-virtual {v0, v1, v6}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 271
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v7

    invoke-virtual {v0, v1, v4}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 273
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 274
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 276
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 277
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 278
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    :cond_4
    :goto_2
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    goto :goto_1

    .line 281
    :cond_5
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v0, v5, :cond_4

    .line 282
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 288
    :cond_6
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v1, 0x4234

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    .line 289
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    invoke-virtual {v0, v1, v4}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 290
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v6

    invoke-virtual {v0, v1, v6}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 292
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 293
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 295
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 296
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 298
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 301
    :cond_7
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v0, v5, :cond_1

    .line 302
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    invoke-virtual {v0, v1, v4}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 307
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v7

    invoke-virtual {v0, v1, v7}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 309
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 310
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 312
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 313
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v2, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 315
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 318
    :cond_9
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v0, v5, :cond_1

    .line 319
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method

.method private endRotateByVelocity()V
    .locals 8

    .prologue
    const/high16 v7, -0x3d4c

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x96

    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 195
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 196
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setFillAfter(Z)V

    .line 198
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v2, 0x42b4

    invoke-virtual {v0, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 200
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v7

    invoke-virtual {v0, v1, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 202
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v4, v5}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 203
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v4, v5}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 204
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    :cond_0
    :goto_0
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 213
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-gez v0, :cond_1

    .line 214
    iput v6, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 233
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->setViewVisibile()V

    .line 235
    iput v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    .line 237
    return-void

    .line 207
    :cond_2
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v0, v6, :cond_0

    .line 208
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 216
    :cond_3
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    iget v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    invoke-virtual {v0, v1, v7}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 218
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    const/high16 v1, 0x42b4

    iget v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDegrees(FF)V

    .line 220
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v4, v5}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 221
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v4, v5}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setDuration(J)V

    .line 222
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    :cond_4
    :goto_2
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    goto :goto_1

    .line 225
    :cond_5
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-ne v0, v6, :cond_4

    .line 226
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    iget-object v1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 545
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 549
    :cond_0
    return-void
.end method

.method private setViewVisibile()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 331
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private springback()V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->endRotate()V

    .line 427
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    new-instance v1, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;-><init>(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 477
    return-void
.end method

.method private springbackByVelocity()V
    .locals 2

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->endRotateByVelocity()V

    .line 485
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    new-instance v1, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;-><init>(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 536
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addViewDone(Landroid/view/View;)V
    .locals 2
    .parameter "viewParent"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->views:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;

    .line 569
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->views:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;

    .line 572
    iput-object p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->viewGroup:Landroid/view/View;

    .line 573
    return-void
.end method

.method public clearViews()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 592
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    return v0
.end method

.method public removeView(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 581
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 622
    iget v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->endRotate()V

    .line 625
    :cond_0
    return-void
.end method

.method public setCenterXY(II)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 600
    iput p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterX:I

    .line 601
    iput p2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mCenterY:I

    .line 602
    const-wide v0, 0x4056800000000000L

    int-to-double v2, p2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->perDegree:F

    .line 603
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setCenterXY(FF)V

    .line 604
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d2:Lcom/inveno/newpiflow/animation/Animation3DBox;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setCenterXY(FF)V

    .line 605
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d3:Lcom/inveno/newpiflow/animation/Animation3DBox;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setCenterXY(FF)V

    .line 606
    return-void
.end method

.method public setOnTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "superOnTouchEventBoolean"

    .prologue
    const/16 v8, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 88
    .local v2, y:I
    iget-object v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 89
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 185
    :goto_0
    return p2

    .line 97
    :pswitch_0
    iput v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mLastMotionY:I

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 v4, 0x447a

    invoke-virtual {v3, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 104
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mLastMotionY:I

    sub-int v1, v3, v2

    .line 106
    .local v1, dy:I
    iget-boolean v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->isCanMove:Z

    if-eqz v3, :cond_1

    .line 108
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v4, -0x3db8

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 111
    iput-boolean v7, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->isCanMove:Z

    .line 113
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->springback()V

    .line 114
    iput-boolean v6, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->hasStartSpringback:Z

    .line 151
    :cond_1
    iput v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mLastMotionY:I

    goto :goto_0

    .line 118
    :cond_2
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_1

    .line 121
    const/16 v3, 0x14

    if-le v1, v3, :cond_5

    .line 122
    const/16 v1, 0x14

    .line 127
    :cond_3
    :goto_1
    int-to-float v3, v1

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->doRotate(F)V

    .line 129
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v4, -0x3d4c

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 131
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 132
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    if-gez v3, :cond_4

    .line 133
    iput v6, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 135
    :cond_4
    iput v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    goto :goto_0

    .line 123
    :cond_5
    const/16 v3, -0xf

    if-ge v1, v3, :cond_3

    .line 124
    const/16 v1, -0xf

    goto :goto_1

    .line 138
    :cond_6
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    const/high16 v4, 0x42b4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 139
    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->currentTab:I

    .line 141
    iput v5, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    goto :goto_0

    .line 156
    .end local v1           #dy:I
    :pswitch_2
    iget-boolean v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->hasStartSpringback:Z

    if-nez v3, :cond_8

    iget v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->degree:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_8

    .line 159
    iget-object v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 160
    iget-object v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 162
    .local v0, VelocityY:F
    iget-boolean v3, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->isCanMove:Z

    if-eqz v3, :cond_9

    const/high16 v3, 0x43fa

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_7

    const/high16 v3, -0x3c06

    cmpg-float v3, v0, v3

    if-gez v3, :cond_9

    .line 163
    :cond_7
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->springbackByVelocity()V

    .line 168
    :goto_2
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->releaseVelocityTracker()V

    .line 172
    .end local v0           #VelocityY:F
    :cond_8
    iput-boolean v7, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->hasStartSpringback:Z

    .line 173
    iput-boolean v6, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->isCanMove:Z

    goto/16 :goto_0

    .line 165
    .restart local v0       #VelocityY:F
    :cond_9
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->springback()V

    goto :goto_2

    .line 179
    .end local v0           #VelocityY:F
    :pswitch_3
    invoke-direct {p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
