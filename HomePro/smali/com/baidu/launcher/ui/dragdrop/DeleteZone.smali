.class public Lcom/baidu/launcher/ui/dragdrop/DeleteZone;
.super Landroid/widget/FrameLayout;
.source "DeleteZone.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;
.implements Lcom/baidu/launcher/ui/dragdrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastAnimationSet;,
        Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c


# instance fields
.field private content:Landroid/widget/TextView;

.field private mDeleteView:Landroid/view/View;

.field private mHandle:Landroid/view/View;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private final mLocation:[I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/RectF;

.field private mTrashMode:Z

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mLocation:[I

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 79
    .local v0, srcColor:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 80
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->init()V

    .line 81
    return-void
.end method

.method private canDelete(Ljava/lang/Object;)Z
    .locals 3
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x1

    .line 97
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 111
    .end local p1
    :goto_0
    return v0

    .line 99
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/launcher/utils/Utilities;->canDelete(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v0, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    :cond_3
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method private createAnimations()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->createInAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->createOutAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 252
    :cond_1
    return-void
.end method

.method private createHandleAnimations()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x12c

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 262
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    :cond_1
    return-void
.end method

.method private createInAnimation()Landroid/view/animation/AnimationSet;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    new-instance v9, Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastAnimationSet;

    invoke-direct {v9}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastAnimationSet;-><init>()V

    .line 268
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 269
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 270
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 273
    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 274
    return-object v9
.end method

.method private createOutAnimation()Landroid/view/animation/AnimationSet;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 278
    new-instance v9, Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastAnimationSet;

    invoke-direct {v9}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastAnimationSet;-><init>()V

    .line 279
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 280
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 281
    new-instance v0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastTranslateAnimation;

    const/high16 v8, -0x4080

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 284
    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 285
    return-object v9
.end method

.method private delete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "dragInfo"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mDeleteView:Landroid/view/View;

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/launcher/ui/logic/ViewManager;->deleteFromDeleteZone(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Ljava/lang/Object;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mDeleteView:Landroid/view/View;

    .line 149
    return-void
.end method

.method private getErrorMessageRes(Ljava/lang/Object;)I
    .locals 1
    .parameter "dragInfo"

    .prologue
    .line 129
    instance-of v0, p1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7f0c0063

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 85
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 86
    .local v1, td:Landroid/graphics/drawable/TransitionDrawable;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 88
    .end local v1           #td:Landroid/graphics/drawable/TransitionDrawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 6
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->canDelete(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, accept:Z
    :goto_0
    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getErrorMessageRes(Ljava/lang/Object;)I

    move-result v1

    .line 119
    .local v1, errorMessage:I
    if-nez v1, :cond_2

    move v0, v5

    .line 125
    .end local v0           #accept:Z
    .end local v1           #errorMessage:I
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v5

    .line 116
    goto :goto_0

    .line 120
    .restart local v0       #accept:Z
    .restart local v1       #errorMessage:I
    :cond_2
    const v4, 0x7f0c0063

    if-ne v1, v4, :cond_3

    const/16 v4, 0x30

    :goto_2
    or-int/lit8 v2, v4, 0x1

    .line 121
    .local v2, gravity:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 122
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 123
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 120
    .end local v2           #gravity:I
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_3
    const/16 v4, 0x50

    goto :goto_2
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
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnd(Z)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTrashMode:Z

    if-eqz v0, :cond_0

    .line 229
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTrashMode:Z

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, res:Landroid/content/res/Resources;
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->canDelete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const v2, 0x7f02035d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, v1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const v2, 0x7f02035c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const v2, 0x7f02035a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {p6, v3}, Lcom/baidu/launcher/ui/dragdrop/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 170
    return-void
.end method

.method public onDragStart(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IZ)V
    .locals 9
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"
    .parameter "animation"

    .prologue
    .line 183
    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-nez v3, :cond_0

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->canDelete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->setVisibility(I)V

    .line 225
    .end local p2
    :cond_1
    :goto_0
    return-void

    .line 187
    .restart local p2
    :cond_2
    if-eqz p2, :cond_1

    .line 188
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTrashMode:Z

    .line 189
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->createAnimations()V

    .line 190
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mLocation:[I

    .line 191
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getLocationOnScreen([I)V

    .line 192
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mRegion:Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, v1, v6

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->bringToFront()V

    .line 197
    invoke-direct {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->createHandleAnimations()V

    .line 198
    if-eqz p4, :cond_5

    .line 199
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 201
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    :cond_3
    :goto_1
    const v0, 0x7f0c0143

    .line 207
    .local v0, id:I
    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_7

    .line 208
    check-cast p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p2
    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-eqz v3, :cond_6

    .line 209
    const v0, 0x7f0c006e

    .line 218
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 220
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const v4, 0x7f02035a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->setVisibility(I)V

    goto :goto_0

    .line 203
    .end local v0           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 211
    .end local p2
    .restart local v0       #id:I
    :cond_6
    const v0, 0x7f0c0144

    goto :goto_2

    .line 213
    .restart local p2
    :cond_7
    instance-of v3, p2, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    if-eqz v3, :cond_8

    .line 214
    const v0, 0x7f0c0142

    goto :goto_2

    .line 215
    :cond_8
    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_4

    .line 216
    const v0, 0x7f0c0145

    goto :goto_2
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1, p7}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->delete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 93
    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->content:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 1
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->delete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDeleteView(Landroid/view/View;)V
    .locals 0
    .parameter "mOriginator"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mDeleteView:Landroid/view/View;

    .line 153
    return-void
.end method

.method setHandle(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    .line 296
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 1
    .parameter "viewManager"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DeleteZone;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 290
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    .line 291
    .local v0, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 292
    return-void
.end method
