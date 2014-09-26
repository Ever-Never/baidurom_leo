.class Lcom/baidu/launcher/ui/homeview/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

.field final synthetic val$resizeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$4;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$4;->val$resizeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$4;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$4;->val$resizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1911
    :goto_0
    return-void

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$4;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$4;->val$resizeRunnable:Ljava/lang/Runnable;

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$202(Lcom/baidu/launcher/ui/homeview/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
