.class Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/dragdrop/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleAnimation"
.end annotation


# instance fields
.field private mDragScale:F

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragView;Landroid/view/View;)V
    .locals 10
    .parameter
    .parameter "view"

    .prologue
    const/high16 v9, 0x3f80

    .line 94
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 92
    const v7, 0x3f8f5c29

    iput v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mDragScale:F

    .line 95
    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mView:Landroid/view/View;

    .line 96
    const-wide/16 v1, 0x1f4

    .line 97
    .local v1, duration:J
    invoke-virtual {p0, v1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->setDuration(J)V

    .line 98
    new-instance v7, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v7, v9, v9}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(FF)V

    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/dragdrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 102
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x7f0c0001

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, dragScaleString:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mDragScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0           #dragScaleString:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v7, v6, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v7, :cond_0

    move-object v3, v6

    .line 111
    check-cast v3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 112
    .local v3, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget v7, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    iget v8, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    if-le v7, v8, :cond_1

    iget v4, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 113
    .local v4, ratio:I
    :goto_1
    iget v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mDragScale:F

    sub-float/2addr v7, v9

    int-to-float v8, v4

    div-float/2addr v7, v8

    add-float/2addr v7, v9

    iput v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mDragScale:F

    .line 116
    .end local v3           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v4           #ratio:I
    :cond_0
    return-void

    .line 112
    .restart local v3       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_1
    iget v4, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    goto :goto_1

    .line 104
    .end local v3           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v6           #tag:Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v6, 0x3f80

    .line 121
    iget v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mDragScale:F

    sub-float/2addr v1, v6

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float v0, v6, v1

    .line 122
    .local v0, scaleRatio:F
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 123
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragView$ScaleAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 124
    return-void
.end method
