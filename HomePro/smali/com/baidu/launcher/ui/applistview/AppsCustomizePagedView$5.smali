.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$5;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 2846
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$5;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 9
    .parameter "animation"

    .prologue
    .line 2850
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2852
    .local v2, percent:F
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$5;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->animateViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$500(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Ljava/util/ArrayList;

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

    .line 2853
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;

    .line 2855
    .local v1, lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    iget v4, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalX:I

    int-to-float v4, v4

    iget v5, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationX:I

    iget v6, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 2857
    iget v4, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalY:I

    int-to-float v4, v4

    iget v5, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->destinationY:I

    iget v6, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->originalY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 2859
    iget v4, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    iget v5, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    iget v6, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 2862
    .end local v1           #lp:Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
