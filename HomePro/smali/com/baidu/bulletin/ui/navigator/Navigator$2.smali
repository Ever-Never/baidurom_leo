.class Lcom/baidu/bulletin/ui/navigator/Navigator$2;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/navigator/Navigator;-><init>(Landroid/view/View;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$2;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$2;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 154
    return-void
.end method
