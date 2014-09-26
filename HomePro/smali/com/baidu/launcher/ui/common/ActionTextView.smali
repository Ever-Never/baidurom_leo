.class public Lcom/baidu/launcher/ui/common/ActionTextView;
.super Landroid/widget/TextView;
.source "ActionTextView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/common/PressedView;


# instance fields
.field private alpha:F

.field private isAlphaAnimating:Z

.field private isDisable:Z

.field private isHide:Z

.field private mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

.field private mDidInvalidateForPressedState:Z

.field public mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

.field private mFocusedGlowColor:I

.field private mFocusedOutlineColor:I

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;

.field public shouldDrawBlur:Z

.field protected whetherDrawEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->whetherDrawEvent:Z

    .line 31
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->alpha:F

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->whetherDrawEvent:Z

    .line 31
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 42
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    .line 43
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->alpha:F

    .line 51
    sget-object v2, Lcom/baidu/home2/R$styleable;->ActionView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 53
    .local v1, actionType:I
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/ActionTextView;->init(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->whetherDrawEvent:Z

    .line 31
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    .line 42
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    .line 43
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->alpha:F

    .line 58
    sget-object v2, Lcom/baidu/home2/R$styleable;->ActionView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 60
    .local v1, actionType:I
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/ActionTextView;->init(I)V

    .line 61
    return-void
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "canvas"
    .parameter "outlineColor"
    .parameter "glowColor"

    .prologue
    .line 277
    sget v1, Lcom/baidu/launcher/app/LauncherApplication;->MAX_OUTER_BLUR_RADIUS:I

    .line 278
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-direct {p0, p1, v1}, Lcom/baidu/launcher/ui/common/ActionTextView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    .line 284
    invoke-static {}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->getInstance()Lcom/baidu/launcher/utils/HolographicOutlineHelper;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p3, p2}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 286
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    :cond_0
    return-object v0
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter "destCanvas"
    .parameter "padding"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempRect:Landroid/graphics/Rect;

    .line 303
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 314
    .local v1, count:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v4, p2, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 317
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;->draw(Landroid/graphics/Canvas;)V

    .line 318
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 319
    return-void
.end method

.method private init(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 64
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 65
    new-instance v0, Lcom/baidu/launcher/ui/common/StatusAction;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/StatusAction;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    .line 71
    :goto_0
    new-instance v0, Lcom/baidu/launcher/ui/common/EventAction;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/EventAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

    .line 72
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedGlowColor:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOutlineColor:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mFocusedGlowColor:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mFocusedOutlineColor:I

    .line 74
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 67
    new-instance v0, Lcom/baidu/launcher/ui/common/NoneAction;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/NoneAction;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/baidu/launcher/ui/common/NoneAction;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/NoneAction;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    goto :goto_0
.end method

.method private releasePressedBackground()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 189
    return-void
.end method

.method private setCellLayoutPressedOrFocusedIcon()V
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 244
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 245
    instance-of v2, v0, Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 246
    check-cast v1, Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    .line 247
    .local v1, root:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    if-eqz v1, :cond_2

    .line 248
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .end local p0
    :goto_1
    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->setPressedOrFocusedIcon(Lcom/baidu/launcher/ui/common/PressedView;)V

    .line 255
    .end local v1           #root:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    :cond_0
    return-void

    .line 248
    .restart local v1       #root:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    .restart local p0
    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 252
    .end local v1           #root:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearPressedOrFocusedBackground()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->releasePressedBackground()V

    .line 259
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 260
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->isHide:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    if-eqz v13, :cond_3

    .line 82
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 86
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v13, v0, v1}, Lcom/baidu/launcher/ui/common/DecorateAction;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 89
    .local v8, object:Ljava/lang/Object;
    instance-of v13, v8, Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->whetherDrawEvent:Z

    if-eqz v13, :cond_1

    .line 90
    check-cast v8, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .end local v8           #object:Ljava/lang/Object;
    iget v7, v8, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 91
    .local v7, number:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getWidth()I

    move-result v14

    add-int v10, v13, v14

    .line 92
    .local v10, scrollX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getPaddingLeft()I

    move-result v14

    sub-int v14, v10, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getPaddingTop()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v7, v14, v15}, Lcom/baidu/launcher/ui/common/EventAction;->draw(Landroid/graphics/Canvas;III)V

    .line 94
    .end local v7           #number:I
    .end local v10           #scrollX:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->isHide:Z

    if-eqz v13, :cond_4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/launcher/utils/Utilities;->getHideIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 96
    .local v3, hide:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 97
    .local v6, iconW:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 98
    .local v4, iconH:I
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v5

    .line 99
    .local v5, iconSize:I
    const/4 v9, 0x3

    .line 100
    .local v9, offset:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    const/16 v13, 0x4c

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 102
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    div-int/lit8 v14, v5, 0x2

    add-int/2addr v13, v14

    sub-int/2addr v13, v6

    add-int/lit8 v11, v13, 0x3

    .line 103
    .local v11, translateX:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollY:I

    add-int/2addr v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v4

    add-int/lit8 v12, v13, 0x3

    .line 104
    .local v12, translateY:I
    int-to-float v13, v11

    int-to-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 121
    .end local v3           #hide:Landroid/graphics/drawable/Drawable;
    .end local v4           #iconH:I
    .end local v5           #iconSize:I
    .end local v6           #iconW:I
    .end local v9           #offset:I
    .end local v11           #translateX:I
    .end local v12           #translateY:I
    :cond_2
    :goto_1
    return-void

    .line 84
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 107
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->isDisable:Z

    if-eqz v13, :cond_2

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/launcher/utils/Utilities;->getDisableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 109
    .local v2, disable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 110
    .restart local v6       #iconW:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 111
    .restart local v4       #iconH:I
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v5

    .line 112
    .restart local v5       #iconSize:I
    const/4 v9, 0x3

    .line 113
    .restart local v9       #offset:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    const/16 v13, 0xff

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 115
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    div-int/lit8 v14, v5, 0x2

    add-int/2addr v13, v14

    sub-int/2addr v13, v6

    add-int/lit8 v11, v13, 0x3

    .line 116
    .restart local v11       #translateX:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollY:I

    add-int/2addr v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v4

    add-int/lit8 v12, v13, 0x3

    .line 117
    .restart local v12       #translateY:I
    int-to-float v13, v11

    int-to-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 193
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mDidInvalidateForPressedState:Z

    if-nez v3, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 231
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 232
    return-void

    .line 205
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    move v0, v3

    .line 206
    .local v0, backgroundEmptyBefore:Z
    :goto_1
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mStayPressed:Z

    if-nez v5, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->releasePressedBackground()V

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_5

    .line 215
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->releasePressedBackground()V

    .line 222
    :goto_2
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mStayPressed:Z

    .line 223
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 225
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6

    move v1, v3

    .line 226
    .local v1, backgroundEmptyNow:Z
    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .end local v0           #backgroundEmptyBefore:Z
    .end local v1           #backgroundEmptyNow:Z
    :cond_4
    move v0, v4

    .line 205
    goto :goto_1

    .line 217
    .restart local v0       #backgroundEmptyBefore:Z
    :cond_5
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 218
    .local v2, canvas:Landroid/graphics/Canvas;
    iget v5, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mFocusedGlowColor:I

    iget v6, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mFocusedOutlineColor:I

    invoke-direct {p0, v2, v5, v6}, Lcom/baidu/launcher/ui/common/ActionTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_2

    .end local v2           #canvas:Landroid/graphics/Canvas;
    :cond_6
    move v1, v4

    .line 225
    goto :goto_3
.end method

.method public getDecorateAction()Lcom/baidu/launcher/ui/common/DecorateAction;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    return-object v0
.end method

.method public getEventAction()Lcom/baidu/launcher/ui/common/EventAction;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

    return-object v0
.end method

.method public getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPressedOrFocusedBackgroundPadding()I
    .locals 1

    .prologue
    .line 267
    sget v0, Lcom/baidu/launcher/app/LauncherApplication;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const v4, 0x100008

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    invoke-interface {v3, p1}, Lcom/baidu/launcher/ui/common/DecorateAction;->onTouchEventCheck(Landroid/view/MotionEvent;)Z

    .line 145
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 146
    .local v1, result:Z
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->shouldDrawBlur:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 156
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedGlowColor:I

    iget v4, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOutlineColor:I

    invoke-direct {p0, v0, v3, v4}, Lcom/baidu/launcher/ui/common/ActionTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 162
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mDidInvalidateForPressedState:Z

    .line 164
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .line 166
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mDidInvalidateForPressedState:Z

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->releasePressedBackground()V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public posAlphaAnimation(F)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    .line 335
    iput p1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->alpha:F

    .line 336
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->postInvalidate()V

    .line 337
    return-void
.end method

.method public setDisable(Z)V
    .locals 1
    .parameter "isDisable"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isDisable:Z

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    .line 331
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->postInvalidate()V

    .line 332
    return-void
.end method

.method public setEventAction(Lcom/baidu/launcher/ui/common/EventAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

    .line 130
    return-void
.end method

.method public setHide(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    const v0, 0x3e99999a

    :goto_0
    iput v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->alpha:F

    .line 323
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isHide:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->isAlphaAnimating:Z

    .line 325
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->postInvalidate()V

    .line 326
    return-void

    .line 322
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public setScrollXY(II)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 124
    iput p1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollX:I

    .line 125
    iput p2, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mScrollY:I

    .line 126
    return-void
.end method

.method public setStayPressed(Z)V
    .locals 0
    .parameter "stayPressed"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/ActionTextView;->mStayPressed:Z

    .line 236
    if-nez p1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->releasePressedBackground()V

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 240
    return-void
.end method

.method public updateEventNumber(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 359
    return-void
.end method
