.class public Lcom/baidu/launcher/ui/common/BubbleTextView;
.super Lcom/baidu/launcher/ui/common/ActionTextView;
.source "BubbleTextView.java"


# static fields
.field public static final CORNER_RADIUS:F = 8.0f

.field private static final HIGHLIGHT_DURATION:I = 0x258

.field public static final PADDING_H:F = 5.0f

.field public static final PADDING_V:F = 1.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mDrawHightlight:Z

.field private mPaint:Landroid/graphics/Paint;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;)V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->startTime:J

    .line 52
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->startTime:J

    .line 57
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->startTime:J

    .line 62
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->init()V

    .line 63
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setFocusable(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public cancelFolderHighlight()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mDrawHightlight:Z

    .line 192
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->invalidate()V

    .line 193
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 102
    .local v1, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v7, 0x1

    .line 103
    .local v7, showBg:Z
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getAlpha()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    const/4 v7, 0x1

    .line 106
    :cond_0
    :goto_1
    if-eqz v7, :cond_2

    .line 107
    iget v5, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mScrollX:I

    .line 108
    .local v5, scrollX:I
    iget v6, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mScrollY:I

    .line 110
    .local v6, scrollY:I
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v8, :cond_1

    .line 111
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mRight:I

    iget v11, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBottom:I

    iget v12, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 115
    :cond_1
    or-int v8, v5, v6

    if-nez v8, :cond_7

    .line 116
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    .end local v5           #scrollX:I
    .end local v6           #scrollY:I
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mDrawHightlight:Z

    if-eqz v8, :cond_4

    .line 125
    iget v5, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mScrollX:I

    .line 126
    .restart local v5       #scrollX:I
    iget v6, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mScrollY:I

    .line 133
    .restart local v6       #scrollY:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->startTime:J

    sub-long v2, v8, v10

    .line 134
    .local v2, delta:J
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/utils/Utilities;->getFolderHighlight(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 135
    .local v4, mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mRight:I

    iget v11, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBottom:I

    iget v12, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    long-to-int v8, v2

    mul-int/lit16 v8, v8, 0xff

    div-int/lit16 v0, v8, 0x258

    .line 137
    .local v0, alpha:I
    const/16 v8, 0xff

    if-le v0, v8, :cond_3

    .line 138
    const/16 v0, 0xff

    .line 139
    :cond_3
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 140
    or-int v8, v5, v6

    if-nez v8, :cond_8

    .line 141
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    :goto_3
    const/16 v8, 0xff

    if-ge v0, v8, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->postInvalidate()V

    .line 163
    .end local v0           #alpha:I
    .end local v2           #delta:J
    .end local v4           #mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #scrollX:I
    .end local v6           #scrollY:I
    :cond_4
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;->draw(Landroid/graphics/Canvas;)V

    .line 164
    return-void

    .line 102
    .end local v7           #showBg:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 104
    .restart local v7       #showBg:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 118
    .restart local v5       #scrollX:I
    .restart local v6       #scrollY:I
    :cond_7
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    neg-int v8, v5

    int-to-float v8, v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 143
    .restart local v0       #alpha:I
    .restart local v2       #delta:J
    .restart local v4       #mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    :cond_8
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    neg-int v8, v5

    int-to-float v8, v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3
.end method

.method public drawFolderHighlight()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mDrawHightlight:Z

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->startTime:J

    .line 186
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->invalidate()V

    .line 187
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 199
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    :cond_0
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->drawableStateChanged()V

    .line 203
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->onAttachedToWindow()V

    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/ActionTextView;->onDetachedFromWindow()V

    .line 177
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 84
    iget v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 88
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/common/ActionTextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
