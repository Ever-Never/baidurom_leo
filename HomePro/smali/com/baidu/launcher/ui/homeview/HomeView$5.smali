.class Lcom/baidu/launcher/ui/homeview/HomeView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->outAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$5;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$5;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$5;->val$v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$5;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 406
    return-void
.end method
