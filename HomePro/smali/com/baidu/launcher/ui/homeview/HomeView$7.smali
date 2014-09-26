.class Lcom/baidu/launcher/ui/homeview/HomeView$7;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1356
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v7}, Lcom/baidu/launcher/data/item/IFolderInfo;->getContainer()J

    move-result-wide v1

    .line 1357
    .local v1, container:J
    const-wide/16 v7, -0xc8

    cmp-long v7, v1, v7

    if-nez v7, :cond_1

    .line 1358
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v7, v7, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/homeview/DockBar;->updateFolder(Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 1374
    :cond_0
    return-void

    .line 1360
    :cond_1
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v7}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v8}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 1362
    .local v0, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    if-eqz v0, :cond_0

    .line 1363
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1364
    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1365
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 1366
    .local v5, tag:Ljava/lang/Object;
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/HomeView$7;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    if-ne v5, v7, :cond_2

    move-object v4, v6

    .line 1367
    check-cast v4, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .line 1368
    .local v4, icon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/FolderIcon;->updateFolderIcon()V

    .line 1363
    .end local v4           #icon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
