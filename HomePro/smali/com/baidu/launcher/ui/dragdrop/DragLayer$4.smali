.class Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;
.super Landroid/view/animation/Animation;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field final synthetic val$alpha:Z

.field final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$from:Landroid/graphics/Rect;

.field final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$to:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$to:Landroid/graphics/Rect;

    iput-boolean p7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$alpha:Z

    iput p8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$finalAlpha:F

    iput p9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$finalScale:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v9, 0x3f80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 556
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 558
    move v3, p1

    .line 559
    .local v3, percent:F
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropAnimPercent:F
    invoke-static {v5, v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$702(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F

    .line 561
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 562
    .local v4, width:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 564
    .local v1, height:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_1

    move v0, v3

    .line 566
    .local v0, alphaPercent:F
    :goto_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_2

    move v2, v3

    .line 569
    .local v2, motionPercent:F
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$to:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v10

    .line 571
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$to:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$from:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v11

    .line 575
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$alpha:Z

    if-eqz v5, :cond_0

    .line 576
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$finalAlpha:F

    mul-float/2addr v6, v0

    sub-float v7, v9, v0

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->initialAlpha:F
    invoke-static {v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$400(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewAlpha:F
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$302(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F

    .line 578
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$finalScale:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x4010

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    .line 579
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    const/high16 v6, 0x4080

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$202(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F

    .line 583
    :goto_2
    iget v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$finalScale:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_4

    .line 584
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v10

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F
    invoke-static {v7}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F

    move-result v7

    sub-float v7, v9, v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    div-float/2addr v7, v12

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F
    invoke-static {v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F

    move-result v8

    sub-float v8, v9, v8

    int-to-float v9, v1

    mul-float/2addr v8, v9

    div-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v8

    aget v8, v8, v10

    int-to-float v9, v4

    iget-object v10, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F
    invoke-static {v10}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v9}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v9

    aget v9, v9, v11

    int-to-float v10, v1

    iget-object v11, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F
    invoke-static {v11}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidate(IIII)V

    .line 592
    :goto_3
    return-void

    .line 564
    .end local v0           #alphaPercent:F
    .end local v2           #motionPercent:F
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_0

    .line 566
    .restart local v0       #alphaPercent:F
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_1

    .line 581
    .restart local v2       #motionPercent:F
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iget v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->val$finalScale:F

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewScale:F
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$202(Lcom/baidu/launcher/ui/dragdrop/DragLayer;F)F

    goto :goto_2

    .line 589
    :cond_4
    iget-object v5, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iget-object v6, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v6}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v10

    iget-object v7, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v7}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v8}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v8

    aget v8, v8, v10

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$4;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropViewPos:[I
    invoke-static {v9}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$100(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)[I

    move-result-object v9

    aget v9, v9, v11

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->invalidate(IIII)V

    goto :goto_3
.end method
