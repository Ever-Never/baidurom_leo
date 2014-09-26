.class public Lcom/baidu/launcher/ui/preview/Preview;
.super Landroid/widget/FrameLayout;
.source "Preview.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;
.implements Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;
.implements Lcom/baidu/launcher/ui/logic/IBaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;,
        Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    }
.end annotation


# static fields
.field private static final PREVIEW_ANIMATION_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "Preview"


# instance fields
.field private animateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private bottomPadding:I

.field private defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

.field private hGap:I

.field private hPaddng:I

.field private lastMoveIndex:I

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

.field private mDraggedView:Landroid/view/View;

.field private mIsAnimating:Z

.field private mIsDraggedViewEmptyScreen:Z

.field private mIsNotDropDelete:Z

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private orignalScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

.field private padddingDeltaX:[F

.field private padddingDeltaY:[F

.field private pivotDelta:[F

.field private posIndex:[[I

.field private previewHeight:I

.field private previewScale:F

.field private previewWidth:I

.field private topPadding:I

.field private vGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/preview/Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/preview/Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    .line 62
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->pivotDelta:[F

    .line 64
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->padddingDeltaY:[F

    .line 66
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->padddingDeltaX:[F

    .line 68
    filled-new-array {v7, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;

    .line 125
    sget-object v1, Lcom/baidu/home2/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->hPaddng:I

    .line 127
    const/16 v1, 0x1e

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->topPadding:I

    .line 128
    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->bottomPadding:I

    .line 129
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->hGap:I

    .line 130
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->vGap:I

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void

    .line 62
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 64
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xbft
    .end array-data

    .line 66
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x80t 0xbft
    .end array-data
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/preview/Preview;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/preview/Preview;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/preview/Preview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/baidu/launcher/ui/preview/Preview;->resetAnimateViews()V

    return-void
.end method

.method private calculateAnimateViews(II)V
    .locals 12
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 470
    if-le p2, p1, :cond_0

    move v0, v8

    .line 471
    .local v0, ascend:Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v6, -0x1

    .line 472
    .local v6, step:I
    :goto_1
    if-eqz v0, :cond_2

    add-int/lit8 v5, p1, 0x1

    .line 473
    .local v5, start:I
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 475
    .local v2, end:I
    :goto_3
    move v3, v5

    .local v3, i:I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 476
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/preview/Preview;->getViewByIndex(I)Landroid/view/View;

    move-result-object v7

    .line 477
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_4

    .line 475
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v0           #ascend:Z
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #start:I
    .end local v6           #step:I
    .end local v7           #v:Landroid/view/View;
    :cond_0
    move v0, v9

    .line 470
    goto :goto_0

    .restart local v0       #ascend:Z
    :cond_1
    move v6, v8

    .line 471
    goto :goto_1

    .restart local v6       #step:I
    :cond_2
    move v5, p2

    .line 472
    goto :goto_2

    .restart local v5       #start:I
    :cond_3
    move v2, p1

    .line 473
    goto :goto_3

    .line 478
    .restart local v2       #end:I
    .restart local v3       #i:I
    .restart local v7       #v:Landroid/view/View;
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 479
    .local v4, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget-object v10, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    add-int v11, v3, v6

    aget-object v1, v10, v11

    .line 480
    .local v1, desPos:[I
    aget v10, v1, v9

    iput v10, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->destinationX:I

    .line 481
    aget v10, v1, v8

    iput v10, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->destinationY:I

    .line 482
    iput-boolean v8, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 483
    #setter for: Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationStep:I
    invoke-static {v4, v6}, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->access$102(Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;I)I

    .line 484
    iget-object v10, p0, Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 486
    .end local v1           #desPos:[I
    .end local v4           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v7           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private getPreviewImage(Lcom/baidu/launcher/ui/homeview/CellLayout;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "cell"

    .prologue
    const/high16 v10, 0x4000

    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 278
    :goto_0
    return-object v2

    .line 262
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    .line 263
    .local v1, bWidth:I
    iget v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    .line 265
    .local v0, bHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 266
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v3, c:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 268
    .local v6, sWidth:I
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    mul-float/2addr v7, v8

    float-to-int v5, v7

    .line 269
    .local v5, sHeight:I
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 270
    .local v4, location:[I
    invoke-virtual {p1, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getLocationOnScreen([I)V

    .line 271
    const/4 v7, 0x1

    aget v8, v4, v7

    iget-object v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v9

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 274
    sub-int v7, v1, v6

    int-to-float v7, v7

    div-float/2addr v7, v10

    sub-int v8, v0, v5

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    iget v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 276
    invoke-virtual {p1, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    .line 489
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 490
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 492
    .local v2, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget v3, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    if-ne v3, p1, :cond_0

    .line 494
    .end local v0           #child:Landroid/view/View;
    .end local v2           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :goto_1
    return-object v0

    .line 489
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v0           #child:Landroid/view/View;
    .end local v2           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hideUnusedViews(Z)V
    .locals 4
    .parameter "hide"

    .prologue
    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 395
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 397
    .local v2, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v3, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    if-eqz v3, :cond_0

    .line 398
    if-eqz p1, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 401
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_2
    return-void
.end method

.method private postAnimation()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 501
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 502
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 503
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 504
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/preview/Preview$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/preview/Preview$4;-><init>(Lcom/baidu/launcher/ui/preview/Preview;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 515
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    new-instance v1, Lcom/baidu/launcher/ui/preview/Preview$5;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/preview/Preview$5;-><init>(Lcom/baidu/launcher/ui/preview/Preview;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 525
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 526
    return-void

    .line 502
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private resetAnimateViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 529
    iget-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 530
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 531
    .local v1, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 532
    .local v2, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iput-boolean v7, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 533
    iget v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->destinationX:I

    iput v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    .line 534
    iget v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->destinationY:I

    iput v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    .line 535
    iget v5, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    #getter for: Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationStep:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->access$100(Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    goto :goto_0

    .line 537
    .end local v1           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v2           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 538
    iget-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 539
    .restart local v1       #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 540
    .restart local v2       #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    iget v6, p0, Lcom/baidu/launcher/ui/preview/Preview;->lastMoveIndex:I

    aget-object v3, v5, v6

    .line 541
    .local v3, pos:[I
    iput-boolean v7, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 542
    aget v5, v3, v7

    iput v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    .line 543
    const/4 v5, 0x1

    aget v5, v3, v5

    iput v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    .line 544
    iget v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->lastMoveIndex:I

    iput v5, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 546
    .end local v1           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v2           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v3           #pos:[I
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 547
    return-void
.end method

.method private switchToHomeView(I)V
    .locals 4
    .parameter "screen"

    .prologue
    .line 814
    new-instance v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    .line 815
    .local v0, data:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showAnim:Z

    .line 816
    new-instance v1, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;

    invoke-direct {v1}, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;-><init>()V

    .line 817
    .local v1, param:Lcom/baidu/launcher/data/item/HomeViewAnimationPara;
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/preview/Preview;->getPreviewRect(I)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;->rect:Landroid/graphics/RectF;

    .line 818
    iput p1, v1, Lcom/baidu/launcher/data/item/HomeViewAnimationPara;->screen:I

    .line 819
    iput-object v1, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showExtra:Ljava/lang/Object;

    .line 820
    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v3, 0x7f08013a

    invoke-virtual {v2, v3, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 821
    return-void
.end method

.method private updateHomeIcons()V
    .locals 6

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v0, v4, :cond_2

    .line 342
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 343
    .local v3, preview:Lcom/baidu/launcher/ui/preview/PreviewItem;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 344
    .local v1, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 345
    .local v2, isDefault:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 346
    iput-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 348
    :cond_0
    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/preview/PreviewItem;->updateBottomIcon(Z)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v2           #isDefault:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 350
    .end local v1           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v3           #preview:Lcom/baidu/launcher/ui/preview/PreviewItem;
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 558
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildUpAlertDialog(Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 432
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mContext:Landroid/content/Context;

    const v2, 0x1030133

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/ui/preview/Preview$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/launcher/ui/preview/Preview$3;-><init>(Lcom/baidu/launcher/ui/preview/Preview;Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/baidu/launcher/ui/preview/Preview$2;

    invoke-direct {v2, p0, p1}, Lcom/baidu/launcher/ui/preview/Preview$2;-><init>(Lcom/baidu/launcher/ui/preview/Preview;Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/baidu/launcher/ui/preview/Preview$1;

    invoke-direct {v2, p0, p1}, Lcom/baidu/launcher/ui/preview/Preview$1;-><init>(Lcom/baidu/launcher/ui/preview/Preview;Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 464
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020424

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 466
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    return-void
.end method

.method public completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
    .locals 0
    .parameter "folder"
    .parameter "data"

    .prologue
    .line 837
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->removeAllViews()V

    .line 669
    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->orignalScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 670
    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 671
    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    .line 672
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    return-void
.end method

.method public estimateDropLocation(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 800
    const v0, 0x7f08017d

    return v0
.end method

.method public getOrinalScreen()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->orignalScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->orignalScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v0, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivot(I)[F
    .locals 10
    .parameter "index"

    .prologue
    .line 239
    const/4 v6, 0x2

    new-array v3, v6, [F

    .line 240
    .local v3, pivot:[F
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, child:Landroid/view/View;
    rem-int/lit8 v2, p1, 0x3

    .line 242
    .local v2, hIndex:I
    div-int/lit8 v5, p1, 0x3

    .line 243
    .local v5, vIndex:I
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 245
    .local v0, LayoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v0

    .line 246
    check-cast v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 247
    .local v4, plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    const/4 v6, 0x0

    iget v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->pivotDelta:[F

    aget v9, v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->padddingDeltaX:[F

    aget v8, v8, v2

    iget v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->hPaddng:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 249
    const/4 v6, 0x1

    iget v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->pivotDelta:[F

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->padddingDeltaY:[F

    aget v8, v8, v5

    iget v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->topPadding:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v3, v6

    .line 253
    .end local v0           #LayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_0
    return-object v3
.end method

.method public getPreviewRect(I)Landroid/graphics/RectF;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 353
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    aget-object v0, v1, p1

    .line 354
    .local v0, pos:[I
    new-instance v1, Landroid/graphics/RectF;

    aget v2, v0, v4

    int-to-float v2, v2

    aget v3, v0, v6

    int-to-float v3, v3

    aget v4, v0, v4

    iget v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    aget v5, v0, v6

    iget v6, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getPreviewScale()F
    .locals 2

    .prologue
    .line 257
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    div-float/2addr v0, v1

    return v0
.end method

.method public hide(ZLjava/lang/Object;)V
    .locals 2
    .parameter "animate"
    .parameter "extra"

    .prologue
    .line 776
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    .line 777
    .local v0, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->dismiss()V

    .line 778
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    .line 779
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    .line 780
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 785
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/preview/Preview;->setVisibility(I)V

    .line 786
    return-void
.end method

.method public initPreviewSize(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 165
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    if-nez v3, :cond_2

    .line 166
    :cond_0
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->hPaddng:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->hGap:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    .line 167
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->topPadding:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->bottomPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->vGap:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 169
    move v1, v0

    .line 170
    .local v1, index:I
    if-lez v0, :cond_1

    .line 171
    add-int/lit8 v1, v1, -0x1

    .line 172
    iget-object v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    aget-object v2, v3, v0

    .line 173
    .local v2, pos:[I
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->hPaddng:I

    rem-int/lit8 v4, v1, 0x3

    iget v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->hGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 174
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->topPadding:I

    div-int/lit8 v4, v1, 0x3

    iget v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->vGap:I

    iget v6, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v8

    .line 168
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v2           #pos:[I
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    aget-object v2, v3, v0

    .line 177
    .restart local v2       #pos:[I
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    neg-int v3, v3

    aput v3, v2, v7

    .line 178
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    neg-int v3, v3

    aput v3, v2, v8

    goto :goto_1

    .line 182
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #pos:[I
    :cond_2
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsAnimating:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->switchToHomeView(I)V

    .line 806
    return-void
.end method

.method public onDefaultScreenChanged(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 336
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->updateScreenConfig(IILandroid/content/Context;)V

    .line 337
    invoke-direct {p0}, Lcom/baidu/launcher/ui/preview/Preview;->updateHomeIcons()V

    .line 338
    return-void
.end method

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 407
    return-void
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 553
    return-void
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 412
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 429
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 414
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    aget-object v2, v4, v0

    .line 415
    .local v2, pos:[I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v2, v6

    iget v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v2, v7

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 416
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 418
    .local v1, index:I
    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->lastMoveIndex:I

    if-eq v1, v4, :cond_3

    .line 419
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    :cond_2
    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->lastMoveIndex:I

    invoke-direct {p0, v4, v1}, Lcom/baidu/launcher/ui/preview/Preview;->calculateAnimateViews(II)V

    .line 423
    iput v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->lastMoveIndex:I

    .line 424
    invoke-direct {p0}, Lcom/baidu/launcher/ui/preview/Preview;->postAnimation()V

    .line 413
    .end local v1           #index:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 360
    const-string v0, "Preview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 366
    .local v3, destPoints:[I
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v0

    neg-int v10, v0

    .line 367
    .local v10, delta:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 368
    .local v12, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 369
    .local v13, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    const/4 v0, 0x0

    iget v1, v13, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    aput v1, v3, v0

    .line 370
    const/4 v0, 0x1

    iget v1, v13, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    aput v1, v3, v0

    .line 371
    const/4 v0, 0x1

    aget v1, v3, v0

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredHeight()I

    move-result v2

    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    aput v1, v3, v0

    .line 372
    const/4 v0, 0x0

    aget v1, v3, v0

    invoke-virtual/range {p6 .. p6}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    aput v1, v3, v0

    .line 373
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V

    .line 374
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v9, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 375
    .local v9, defaultScreen:I
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget v1, v12, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    iget v2, v12, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    invoke-virtual {v0, v1, v2, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->changeScreensOlder(III)V

    .line 377
    .end local v3           #destPoints:[I
    .end local v9           #defaultScreen:I
    .end local v10           #delta:I
    .end local v12           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v13           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->hideUnusedViews(Z)V

    .line 378
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 379
    invoke-virtual {p0, v11}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 380
    .restart local v12       #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget v0, v12, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    iput v0, v12, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 374
    .end local v11           #i:I
    .restart local v3       #destPoints:[I
    .restart local v10       #delta:I
    .restart local v13       #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_2
    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    goto :goto_0

    .line 382
    .end local v3           #destPoints:[I
    .end local v10           #delta:I
    .end local v12           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v13           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .restart local v11       #i:I
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsNotDropDelete:Z

    .line 383
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 12
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 570
    const-string v7, "Preview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDropCompleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", success "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    instance-of v7, p1, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;

    if-eqz v7, :cond_7

    .line 572
    invoke-direct {p0, v10}, Lcom/baidu/launcher/ui/preview/Preview;->hideUnusedViews(Z)V

    .line 573
    if-nez p2, :cond_1

    .line 574
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v7, :cond_0

    .line 577
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->animator:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->onDropFromDeleteZone()V

    .line 580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 581
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 582
    .local v1, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    iput v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    .end local v0           #i:I
    .end local v1           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_1
    iget-boolean v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsNotDropDelete:Z

    if-eqz v7, :cond_3

    .line 586
    iput-boolean v10, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsNotDropDelete:Z

    .line 587
    invoke-direct {p0}, Lcom/baidu/launcher/ui/preview/Preview;->resetAnimateViews()V

    .line 628
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->requestLayout()V

    .line 633
    :cond_2
    :goto_2
    return-void

    .line 589
    :cond_3
    iget-boolean v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsDraggedViewEmptyScreen:Z

    if-eqz v7, :cond_4

    .line 590
    invoke-direct {p0}, Lcom/baidu/launcher/ui/preview/Preview;->resetAnimateViews()V

    goto :goto_1

    .line 592
    :cond_4
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 593
    .restart local v1       #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 595
    .local v5, params:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    iget v8, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    if-ge v7, v8, :cond_5

    .line 596
    iget v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    add-int/lit8 v0, v7, 0x1

    .restart local v0       #i:I
    :goto_3
    iget v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    if-gt v0, v7, :cond_6

    .line 597
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->getViewByIndex(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 598
    .local v2, item:Lcom/baidu/launcher/ui/preview/PreviewItem;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 599
    .local v3, itemInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 601
    .local v4, itemParams:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v7, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 602
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    add-int/lit8 v8, v0, -0x1

    aget-object v6, v7, v8

    .line 603
    .local v6, position:[I
    iput-boolean v10, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 604
    aget v7, v6, v10

    iput v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    .line 605
    aget v7, v6, v11

    iput v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 608
    .end local v0           #i:I
    .end local v2           #item:Lcom/baidu/launcher/ui/preview/PreviewItem;
    .end local v3           #itemInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v4           #itemParams:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v6           #position:[I
    :cond_5
    iget v0, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    .restart local v0       #i:I
    :goto_4
    iget v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    if-ge v0, v7, :cond_6

    .line 609
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->getViewByIndex(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 610
    .restart local v2       #item:Lcom/baidu/launcher/ui/preview/PreviewItem;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 612
    .restart local v3       #itemInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 614
    .restart local v4       #itemParams:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v7, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 615
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    add-int/lit8 v8, v0, 0x1

    aget-object v6, v7, v8

    .line 616
    .restart local v6       #position:[I
    iput-boolean v10, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 617
    aget v7, v6, v10

    iput v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    .line 618
    aget v7, v6, v11

    iput v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 621
    .end local v2           #item:Lcom/baidu/launcher/ui/preview/PreviewItem;
    .end local v3           #itemInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v4           #itemParams:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v6           #position:[I
    :cond_6
    iget v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    iput v7, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 622
    iput-boolean v10, v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    .line 623
    iget-object v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    iget v8, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    aget-object v6, v7, v8

    .line 624
    .restart local v6       #position:[I
    aget v7, v6, v10

    iput v7, v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    .line 625
    aget v7, v6, v11

    iput v7, v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    goto/16 :goto_1

    .line 631
    .end local v0           #i:I
    .end local v1           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v5           #params:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v6           #position:[I
    :cond_7
    iput-boolean v10, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsNotDropDelete:Z

    goto/16 :goto_2
.end method

.method public onDropFromDeleteZone()V
    .locals 5

    .prologue
    .line 386
    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 388
    .local v1, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v0, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 389
    .local v0, defaultScreen:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    iget v3, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    iget v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->changeScreensOlder(III)V

    .line 391
    .end local v0           #defaultScreen:I
    .end local v1           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_0
    return-void

    .line 388
    .restart local v1       #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_1
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    goto :goto_0
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 0
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 733
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 150
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 151
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 152
    check-cast v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 153
    .local v2, plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget-boolean v4, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animating:Z

    if-eqz v4, :cond_1

    .line 154
    iget v4, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationX:I

    iget v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationY:I

    iget v6, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationX:I

    iget v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationY:I

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 148
    .end local v2           #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .restart local v2       #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_1
    iget v4, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    iget v5, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    iget v6, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    iget v7, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    iget v8, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 162
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 137
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 138
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 139
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 140
    .local v2, widthSpec:I
    iget v3, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 141
    .local v0, heightSpec:I
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0           #heightSpec:I
    .end local v2           #widthSpec:I
    :cond_0
    return-void
.end method

.method public onMenu(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter "listener"

    .prologue
    .line 832
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNewIntent(Z)V
    .locals 1
    .parameter "alreadyOnHome"

    .prologue
    .line 810
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->switchToHomeView(I)V

    .line 811
    return-void
.end method

.method public onScreenClicked(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 284
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 285
    check-cast v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 286
    .local v3, plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v1, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 287
    .local v1, index:I
    iget v6, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    packed-switch v6, :pswitch_data_0

    .line 311
    .end local v1           #index:I
    .end local v3           #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v1       #index:I
    .restart local v3       #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :pswitch_0
    const-string v7, "launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "((PreviewInfo)v.getTag()).currentIndex="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v6, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v6, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/preview/Preview;->switchToHomeView(I)V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/Workspace;->addScreen()Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object v0, p1

    .line 294
    check-cast v0, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 295
    .local v0, addView:Lcom/baidu/launcher/ui/preview/PreviewItem;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 296
    const v6, 0x7f020173

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBackgroundResource(I)V

    .line 297
    invoke-virtual {v0, v7}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBottomVisible(Z)V

    .line 298
    const/4 v6, 0x0

    iput v6, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    .line 299
    const/16 v6, 0x9

    if-ge v1, v6, :cond_0

    .line 300
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 301
    .local v5, view:Lcom/baidu/launcher/ui/preview/PreviewItem;
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/preview/PreviewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 302
    .local v4, plpNext:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iput v7, v4, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    .line 303
    const v6, 0x7f02016c

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setImageResource(I)V

    .line 304
    const v6, 0x7f02016f

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBackgroundResource(I)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScreenLongClicked(Landroid/view/View;)Z
    .locals 10
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 316
    .local v8, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v8, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    if-eqz v0, :cond_0

    move-object v9, v8

    .line 317
    check-cast v9, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 318
    .local v9, plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v0, v9, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    packed-switch v0, :pswitch_data_0

    .line 332
    .end local v9           #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 320
    .restart local v9       #plp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :pswitch_1
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDraggedView:Landroid/view/View;

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v0, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    iput v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->lastMoveIndex:I

    .line 322
    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v0, v0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isScreenEmpty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mIsDraggedViewEmptyScreen:Z

    .line 323
    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/preview/Preview;->hideUnusedViews(Z)V

    .line 324
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v5

    move-object v1, p1

    move-object v2, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->startDrag(Landroid/view/View;Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IIZZ)V

    move v4, v6

    .line 325
    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onWorkspaceChanged(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 825
    const-string v0, "Preview"

    const-string v1, "onWorkspaceChanged"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public preparePreviews(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 13
    .parameter "workspace"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->removeAllViews()V

    .line 186
    iget-object v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 187
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v2

    .line 188
    .local v2, currentScreen:I
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v1

    .line 189
    .local v1, count:I
    if-lez v1, :cond_0

    iget v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 190
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, child:Landroid/view/View;
    iget v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewWidth:I

    add-int/lit8 v9, v9, -0x8

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewHeight:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    .line 193
    iget v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    const v10, 0x3f666666

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->previewScale:F

    .line 195
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v9, 0xa

    if-ge v3, v9, :cond_7

    .line 196
    const v9, 0x7f03007d

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 197
    .local v8, pv:Lcom/baidu/launcher/ui/preview/PreviewItem;
    iget-object v9, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    aget-object v7, v9, v3

    .line 198
    .local v7, pos:[I
    new-instance v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;-><init>(II)V

    .line 199
    .local v6, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    const/4 v9, 0x0

    aget v9, v7, v9

    iput v9, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    .line 200
    const/4 v9, 0x1

    aget v9, v7, v9

    iput v9, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    .line 201
    new-instance v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    invoke-direct {v5}, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;-><init>()V

    .line 202
    .local v5, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iput v3, v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 203
    iput v3, v5, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    .line 204
    invoke-virtual {v8, v5}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setTag(Ljava/lang/Object;)V

    .line 205
    if-ne v3, v2, :cond_1

    .line 206
    iput-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->orignalScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 208
    :cond_1
    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->defaultScreen:I

    if-ne v3, v9, :cond_2

    .line 209
    iput-object v5, p0, Lcom/baidu/launcher/ui/preview/Preview;->defaultScreenInfo:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 210
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->updateBottomIcon(Z)V

    .line 212
    :cond_2
    if-ge v3, v1, :cond_4

    .line 213
    const/4 v9, 0x0

    iput v9, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    .line 214
    const v9, 0x7f020173

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBackgroundResource(I)V

    .line 215
    invoke-virtual {p1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-direct {p0, v9}, Lcom/baidu/launcher/ui/preview/Preview;->getPreviewImage(Lcom/baidu/launcher/ui/homeview/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 218
    if-ne v2, v3, :cond_3

    .line 219
    const v9, 0x7f020170

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBackgroundResource(I)V

    .line 230
    :cond_3
    :goto_1
    iget v9, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBottomVisible(Z)V

    .line 231
    invoke-virtual {v8, p0}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setScreenListener(Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;)V

    .line 232
    invoke-virtual {p0, v8, v6}, Lcom/baidu/launcher/ui/preview/Preview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_4
    if-ne v3, v1, :cond_5

    .line 223
    const v9, 0x7f02016f

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBackgroundResource(I)V

    .line 224
    const v9, 0x7f02016c

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setImageResource(I)V

    .line 225
    const/4 v9, 0x1

    iput v9, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    goto :goto_1

    .line 227
    :cond_5
    const v9, 0x7f020171

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setBackgroundResource(I)V

    .line 228
    const/4 v9, 0x2

    iput v9, v6, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->layoutType:I

    goto :goto_1

    .line 230
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 234
    .end local v5           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    .end local v6           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v7           #pos:[I
    .end local v8           #pv:Lcom/baidu/launcher/ui/preview/PreviewItem;
    :cond_7
    invoke-virtual {p1, p0}, Lcom/baidu/launcher/ui/homeview/Workspace;->setPreview(Lcom/baidu/launcher/ui/preview/Preview;)V

    .line 235
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->requestLayout()V

    .line 236
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 677
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 678
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/PreviewItem;

    .line 679
    .local v1, pv:Lcom/baidu/launcher/ui/preview/PreviewItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/preview/PreviewItem;->setScreenListener(Lcom/baidu/launcher/ui/preview/PreviewItem$ScreenListener;)V

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    .end local v1           #pv:Lcom/baidu/launcher/ui/preview/PreviewItem;
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 682
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 737
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 738
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    .line 739
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 740
    return-void
.end method

.method public show(ZLjava/lang/Object;)V
    .locals 12
    .parameter "animate"
    .parameter "extra"

    .prologue
    .line 744
    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v11

    .line 745
    .local v11, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/ui/preview/Preview;->initPreviewSize(II)V

    .line 746
    invoke-virtual {p0, v11}, Lcom/baidu/launcher/ui/preview/Preview;->preparePreviews(Lcom/baidu/launcher/ui/homeview/Workspace;)V

    .line 747
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getPreviewScale()F

    move-result v1

    .line 748
    .local v1, scale:F
    invoke-virtual {v11}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/preview/Preview;->getPivot(I)[F

    move-result-object v8

    .line 749
    .local v8, pivot:[F
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/preview/Preview;->setPivotX(F)V

    .line 751
    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/preview/Preview;->setPivotY(F)V

    .line 752
    const-string v2, "scaleX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 754
    .local v9, scaleXIn:Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 756
    .local v10, scaleYIn:Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 758
    .local v7, mFolderOpenAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 759
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fe66666

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v7, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 761
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 769
    .end local v7           #mFolderOpenAnim:Landroid/animation/ObjectAnimator;
    .end local v9           #scaleXIn:Landroid/animation/PropertyValuesHolder;
    .end local v10           #scaleYIn:Landroid/animation/PropertyValuesHolder;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/baidu/launcher/ui/homeview/Workspace;->mPreviewClosing:Z

    .line 770
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/baidu/launcher/ui/homeview/Workspace;->mShowingPreview:Z

    .line 771
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/preview/Preview;->setVisibility(I)V

    .line 772
    return-void

    .line 763
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    aget v5, v8, v3

    const/4 v3, 0x1

    aget v6, v8, v3

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 765
    .local v0, previewAnim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 766
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fe66666

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 767
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/preview/Preview;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showDraggedView(Ljava/lang/Object;Z)V
    .locals 14
    .parameter "dragInfo"
    .parameter "animation"

    .prologue
    .line 689
    const/4 v11, 0x0

    .line 690
    .local v11, child:Landroid/view/View;
    instance-of v1, p1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/preview/Preview;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    .line 693
    :cond_0
    if-nez v11, :cond_2

    .line 718
    :cond_1
    return-void

    .line 694
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    if-eqz p2, :cond_3

    .line 697
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 698
    .local v10, animSet:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 699
    .local v9, animAlpha:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 702
    .local v0, animScale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 703
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 704
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 705
    invoke-virtual {v11, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 713
    .end local v0           #animScale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #animAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->onDropFromDeleteZone()V

    .line 714
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 715
    invoke-virtual {p0, v12}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    .line 716
    .local v13, info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    iget v1, v13, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    iput v1, v13, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    .line 714
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 708
    .end local v12           #i:I
    .end local v13           #info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 1
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    return v0
.end method

.method public updateTopPadding(Z)V
    .locals 7
    .parameter "showStatusBar"

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 658
    :goto_0
    return-void

    .line 642
    :cond_0
    const/4 v1, 0x0

    .line 643
    .local v1, delta:I
    if-eqz p1, :cond_2

    .line 644
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v4

    neg-int v1, v4

    .line 648
    :goto_1
    iget v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->topPadding:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->topPadding:I

    .line 649
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    .line 650
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->posIndex:[[I

    aget-object v4, v4, v2

    const/4 v5, 0x1

    aget v6, v4, v5

    add-int/2addr v6, v1

    aput v6, v4, v5

    .line 651
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/preview/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 654
    .local v3, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v4, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    .line 649
    .end local v3           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 646
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v1

    goto :goto_1

    .line 657
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/preview/Preview;->requestLayout()V

    goto :goto_0
.end method
