.class final Lcom/baidu/launcher/ui/animation/Choreographer$1;
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

.field final synthetic val$folderLayout:Landroid/view/View;

.field final synthetic val$isFirst:Z

.field final synthetic val$isLastOne:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;ZLandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$isFirst:Z

    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$isLastOne:Z

    iput-object p4, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$animView:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$folderLayout:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 448
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$isLastOne:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$animView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 450
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$folderLayout:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 451
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$102(Z)Z

    .line 453
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$1;->val$isFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$102(Z)Z

    .line 445
    :cond_0
    return-void
.end method
