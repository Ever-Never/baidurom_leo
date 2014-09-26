.class Lcom/baidu/launcher/ui/homeview/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->val$anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->val$anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 268
    .local v0, outline:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlineAlphas:[F
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$000(Lcom/baidu/launcher/ui/homeview/CellLayout;)[F

    move-result-object v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v3

    .line 273
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$100(Lcom/baidu/launcher/ui/homeview/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$1;->val$thisIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
