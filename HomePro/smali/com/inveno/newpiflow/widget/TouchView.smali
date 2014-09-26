.class public Lcom/inveno/newpiflow/widget/TouchView;
.super Landroid/widget/RelativeLayout;
.source "TouchView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->requestFocus()Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 37
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-lt v9, v10, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 41
    .local v0, f1:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 42
    .local v1, f2:F
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 43
    .local v2, f3:F
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v3, v9

    .line 44
    .local v3, f4:F
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v0

    invoke-virtual {p0, v9}, Lcom/inveno/newpiflow/widget/TouchView;->setPivotX(F)V

    .line 45
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/inveno/newpiflow/widget/TouchView;->setPivotY(F)V

    .line 46
    div-float v4, v2, v3

    .line 47
    .local v4, f5:F
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/inveno/newpiflow/model/PiDataItem;

    invoke-virtual {v9}, Lcom/inveno/newpiflow/model/PiDataItem;->isBanner()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 48
    div-float v4, v3, v2

    .line 49
    :cond_1
    const/high16 v9, 0x3f80

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2

    .line 50
    const/high16 v4, 0x3f80

    .line 51
    :cond_2
    const/high16 v9, 0x4100

    sub-float v10, v0, v2

    div-float/2addr v10, v3

    mul-float/2addr v9, v10

    mul-float v5, v4, v9

    .line 52
    .local v5, f6:F
    const/high16 v9, 0x4100

    sub-float v10, v3, v1

    div-float/2addr v10, v3

    mul-float/2addr v9, v10

    mul-float v6, v4, v9

    .line 53
    .local v6, f7:F
    sub-float v9, v0, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v2

    sub-float v10, v1, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v3

    add-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float v7, v9, v10

    .line 54
    .local v7, f8:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    .line 55
    const/high16 v7, 0x3f80

    .line 56
    :cond_3
    const v9, 0x3f7d70a4

    const v10, 0x3cf5c28f

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    sub-float v8, v9, v10

    .line 57
    .local v8, f9:F
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 58
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 59
    const-wide/16 v10, 0x78

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 62
    .end local v0           #f1:F
    .end local v1           #f2:F
    .end local v2           #f3:F
    .end local v3           #f4:F
    .end local v4           #f5:F
    .end local v5           #f6:F
    .end local v6           #f7:F
    .end local v7           #f8:F
    .end local v8           #f9:F
    :pswitch_2
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 64
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 65
    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0xa0

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 68
    :pswitch_3
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 70
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/TouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 71
    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0xa0

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
