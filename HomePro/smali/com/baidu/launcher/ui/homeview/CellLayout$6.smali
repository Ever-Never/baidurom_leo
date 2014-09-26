.class Lcom/baidu/launcher/ui/homeview/CellLayout$6;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2965
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->val$child:Landroid/view/View;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    .line 2966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->cancelled:Z

    .line 2981
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2971
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->cancelled:Z

    if-nez v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2973
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2975
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$400(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2976
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$400(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$6;->val$lp:Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    :cond_1
    return-void
.end method
