.class Lcom/inveno/newpiflow/widget/PiMainView$2;
.super Ljava/lang/Object;
.source "PiMainView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/PiMainView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiMainView;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/PiMainView;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiMainView$2;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$2;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    #getter for: Lcom/inveno/newpiflow/widget/PiMainView;->mActionbarView:Lcom/inveno/newpiflow/widget/PiSetLinerLayout;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->access$000(Lcom/inveno/newpiflow/widget/PiMainView;)Lcom/inveno/newpiflow/widget/PiSetLinerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiSetLinerLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiMainView$2;->this$0:Lcom/inveno/newpiflow/widget/PiMainView;

    const/4 v1, 0x1

    #setter for: Lcom/inveno/newpiflow/widget/PiMainView;->mShowActionbar:Z
    invoke-static {v0, v1}, Lcom/inveno/newpiflow/widget/PiMainView;->access$102(Lcom/inveno/newpiflow/widget/PiMainView;Z)Z

    .line 122
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 109
    return-void
.end method
