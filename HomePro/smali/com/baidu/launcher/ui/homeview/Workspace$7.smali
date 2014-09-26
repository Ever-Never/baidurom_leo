.class Lcom/baidu/launcher/ui/homeview/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdated(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3086
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$7;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$7;->val$screen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$7;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdateListener:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$7;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdateListener:Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$800(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$7;->val$screen:I

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$WorkspaceUpdateListener;->onWorkspaceUpdate(I)V

    .line 3092
    :cond_0
    return-void
.end method
