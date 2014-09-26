.class Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2$1;
.super Ljava/lang/Object;
.source "Animation3DBoxControl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2$1;->this$1:Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2$1;->this$1:Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;

    iget-object v0, v0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #getter for: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->rotate3d:Lcom/inveno/newpiflow/animation/Animation3DBox;
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$300(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)Lcom/inveno/newpiflow/animation/Animation3DBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/animation/Animation3DBox;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 527
    iget-object v0, p0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2$1;->this$1:Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;

    iget-object v0, v0, Lcom/inveno/newpiflow/animation/Animation3DBoxControl$2;->this$0:Lcom/inveno/newpiflow/animation/Animation3DBoxControl;

    #calls: Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->endRotate()V
    invoke-static {v0}, Lcom/inveno/newpiflow/animation/Animation3DBoxControl;->access$600(Lcom/inveno/newpiflow/animation/Animation3DBoxControl;)V

    .line 528
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 521
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 516
    return-void
.end method
