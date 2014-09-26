.class Lcom/baidu/launcher/ui/homeview/CellLayout$5;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

.field final synthetic val$newX:I

.field final synthetic val$newY:I

.field final synthetic val$oldX:I

.field final synthetic val$oldY:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;IIIILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    iput p3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$oldX:I

    iput p4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$newX:I

    iput p5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$oldY:I

    iput p6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$newY:I

    iput-object p7, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    .line 2959
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2960
    .local v0, r:F
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$oldX:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$newX:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 2961
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$oldY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$newY:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 2962
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$5;->val$child:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2963
    return-void
.end method
