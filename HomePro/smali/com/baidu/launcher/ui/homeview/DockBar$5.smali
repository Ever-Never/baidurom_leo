.class Lcom/baidu/launcher/ui/homeview/DockBar$5;
.super Ljava/lang/Object;
.source "DockBar.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$5;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 1479
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1480
    .local v2, percent:F
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar$5;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #getter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimatorItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$700(Lcom/baidu/launcher/ui/homeview/DockBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .line 1481
    .local v1, item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    iget v3, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    int-to-float v3, v3

    iget v4, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->destinationX:I

    iget v5, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->originalX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animationX:I

    goto :goto_0

    .line 1484
    .end local v1           #item:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar$5;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 1485
    return-void
.end method
