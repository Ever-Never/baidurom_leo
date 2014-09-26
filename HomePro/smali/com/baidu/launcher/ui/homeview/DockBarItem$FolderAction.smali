.class Lcom/baidu/launcher/ui/homeview/DockBarItem$FolderAction;
.super Ljava/lang/Object;
.source "DockBarItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/DockBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBarItem;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBarItem;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem$FolderAction;->this$0:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem$FolderAction;->this$0:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->cancelFolderHighlight()V

    .line 246
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem$FolderAction;->this$0:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    .line 247
    .local v0, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem$FolderAction;->this$0:Lcom/baidu/launcher/ui/homeview/DockBarItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->openFolder(Lcom/baidu/launcher/ui/folder/FolderHolder;Z)V

    .line 248
    return-void
.end method
