.class final Lcom/baidu/launcher/ui/animation/Choreographer$3;
.super Ljava/lang/Object;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/animation/Choreographer;->playOpenFolderAnim(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/folder/FolderLayer;Lcom/baidu/launcher/ui/folder/Folder;[ILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$launcher:Lcom/baidu/launcher/app/Launcher;

.field final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$3;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    iput-object p2, p0, Lcom/baidu/launcher/ui/animation/Choreographer$3;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$3;->val$launcher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->removeBlurView(Landroid/app/Activity;)V

    .line 498
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$3;->val$run:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$3;->val$run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 499
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->access$102(Z)Z

    .line 500
    return-void
.end method
