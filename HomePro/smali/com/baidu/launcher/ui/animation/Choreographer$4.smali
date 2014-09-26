.class final Lcom/baidu/launcher/ui/animation/Choreographer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/animation/Choreographer;->playOpenFolderAnim(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/folder/FolderLayer;Lcom/baidu/launcher/ui/folder/Folder;[ILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animView:Landroid/view/ViewGroup;

.field final synthetic val$childView:Landroid/view/View;

.field final synthetic val$isFirst:Z

.field final synthetic val$isLast:Z

.field final synthetic val$launcher:Lcom/baidu/launcher/app/Launcher;

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/view/ViewGroup;ZLcom/baidu/launcher/app/Launcher;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$isFirst:Z

    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$childView:Landroid/view/View;

    iput-object p3, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$animView:Landroid/view/ViewGroup;

    iput-boolean p4, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$isLast:Z

    iput-object p5, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    iput-object p6, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$childView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 552
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$animView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 553
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$isLast:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$102(Z)Z

    .line 555
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->removeBlurView(Landroid/app/Activity;)V

    .line 556
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 558
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$4;->val$isFirst:Z

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$102(Z)Z

    .line 547
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 548
    return-void
.end method
