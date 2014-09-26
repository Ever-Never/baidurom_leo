.class Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;
.super Ljava/lang/Object;
.source "Animation3DBoxControl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->springback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/high16 v1, 0x3f80

    .line 442
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutmain:Landroid/view/View;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$000(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 443
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->layoutnext:Landroid/view/View;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$100(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 444
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->viewGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$200(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->viewGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$200(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$300(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Lcom/inveno/newpiflow/animation/Animation3DBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 451
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    const/high16 v1, 0x4120

    iget-object v2, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->perDegree:F
    invoke-static {v2}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$400(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    #calls: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->doRotate(F)V
    invoke-static {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$500(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;F)V

    .line 453
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$300(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Lcom/inveno/newpiflow/animation/Animation3DBox;

    move-result-object v0

    new-instance v1, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1$1;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1$1;-><init>(Lcom/inveno/newpiflow/animation/Animation3DBoxControl$1;)V

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 472
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 437
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 432
    return-void
.end method
