.class Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 3061
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/high16 v7, 0x3f80

    .line 3064
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3065
    .local v0, r:F
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    mul-float/2addr v4, v0

    sub-float v5, v7, v0

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v6, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaX:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 3066
    .local v2, x:F
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    mul-float/2addr v4, v0

    sub-float v5, v7, v0

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v6, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaY:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 3067
    .local v3, y:F
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 3068
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3069
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalScale:F

    mul-float/2addr v4, v0

    sub-float v5, v7, v0

    iget-object v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget v6, v6, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initScale:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 3070
    .local v1, s:F
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3071
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3072
    return-void
.end method
