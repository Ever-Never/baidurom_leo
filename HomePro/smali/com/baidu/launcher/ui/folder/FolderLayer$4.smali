.class Lcom/baidu/launcher/ui/folder/FolderLayer$4;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "FolderLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FolderLayer;->fadeLayer(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

.field final synthetic val$out:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderLayer;ZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    iput-boolean p2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->val$out:Z

    iput-object p3, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->val$out:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #calls: Lcom/baidu/launcher/ui/folder/FolderLayer;->onFolderClosed()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$700(Lcom/baidu/launcher/ui/folder/FolderLayer;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 481
    :cond_1
    return-void
.end method
