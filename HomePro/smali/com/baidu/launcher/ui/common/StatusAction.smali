.class public Lcom/baidu/launcher/ui/common/StatusAction;
.super Ljava/lang/Object;
.source "StatusAction.java"

# interfaces
.implements Lcom/baidu/launcher/ui/common/DecorateAction;


# instance fields
.field private mAlpha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/launcher/ui/common/StatusAction;->mAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 13
    .parameter "canvas"
    .parameter "view"

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 28
    .local v4, info:Ljava/lang/Object;
    instance-of v11, v4, Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v11, :cond_0

    move-object v5, v4

    .line 29
    check-cast v5, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 30
    .local v5, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget v11, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->status:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    .line 76
    .end local v5           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v5       #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 34
    .local v7, topPadding:I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 35
    .local v10, width:I
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 36
    .local v8, transitionX:I
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 37
    .local v9, transitionY:I
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v11

    int-to-float v11, v11

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v11, v12

    float-to-int v2, v11

    .line 38
    .local v2, iconSize:I
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 39
    .local v6, res:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 40
    .local v3, indicator:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 41
    .local v1, drawableW:I
    const/4 v0, 0x0

    .line 42
    .local v0, drawableH:I
    iget v11, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->status:I

    packed-switch v11, :pswitch_data_0

    .line 67
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget v11, p0, Lcom/baidu/launcher/ui/common/StatusAction;->mAlpha:I

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 46
    :pswitch_1
    const v11, 0x7f020016

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v11, v12

    float-to-int v1, v11

    .line 48
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v11, v12

    float-to-int v0, v11

    .line 49
    sub-int v11, v10, v1

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v8, v11

    .line 50
    sub-int v11, v2, v0

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v7

    add-int/2addr v9, v11

    .line 51
    goto :goto_1

    .line 60
    :pswitch_2
    const v11, 0x7f020014

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v11, v12

    float-to-int v1, v11

    .line 62
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    sget v12, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v11, v12

    float-to-int v0, v11

    .line 63
    sub-int v11, v10, v2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v2

    sub-int/2addr v11, v1

    add-int/2addr v8, v11

    .line 64
    add-int/2addr v9, v7

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEventCheck(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 90
    iput p1, p0, Lcom/baidu/launcher/ui/common/StatusAction;->mAlpha:I

    .line 92
    return-void
.end method

.method public updateEventNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 86
    return-void
.end method
