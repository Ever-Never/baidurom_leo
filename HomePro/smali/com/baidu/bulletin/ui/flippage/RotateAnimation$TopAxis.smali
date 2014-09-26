.class public Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;
.super Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/RotateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopAxis"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;-><init>(Landroid/view/View;)V

    .line 140
    return-void
.end method


# virtual methods
.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$Vertical;->initialize(IIII)V

    .line 145
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;->mXOffset:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;->mYOffset:I

    .line 147
    return-void
.end method

.method protected isVisible()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;->mCurrentAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/baidu/bulletin/ui/flippage/RotateAnimation$TopAxis;->mCurrentAngle:F

    const/high16 v1, 0x42b4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
