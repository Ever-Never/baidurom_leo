.class Lcom/baidu/launcher/ui/preview/Preview$4;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/preview/Preview;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/preview/Preview;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/preview/Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview$4;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 506
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 507
    .local v2, percent:F
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview$4;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    #getter for: Lcom/baidu/launcher/ui/preview/Preview;->animateViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/launcher/ui/preview/Preview;->access$200(Lcom/baidu/launcher/ui/preview/Preview;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 508
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;

    .line 509
    .local v1, lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    iget v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    int-to-float v4, v4

    iget v5, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->destinationX:I

    iget v6, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationX:I

    .line 510
    iget v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    int-to-float v4, v4

    iget v5, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->destinationY:I

    iget v6, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->originalY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;->animationY:I

    goto :goto_0

    .line 512
    .end local v1           #lp:Lcom/baidu/launcher/ui/preview/Preview$PreviewLayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/preview/Preview$4;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/preview/Preview;->requestLayout()V

    .line 513
    return-void
.end method
