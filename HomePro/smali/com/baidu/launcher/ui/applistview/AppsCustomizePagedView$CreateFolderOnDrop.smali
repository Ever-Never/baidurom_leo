.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateFolderOnDrop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 3358
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3361
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$900(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3367
    :goto_0
    return-void

    .line 3363
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/AppListView;

    .line 3364
    .local v0, allAppList:Lcom/baidu/launcher/ui/applistview/AppListView;
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v2, 0x1

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setDragMode(I)V
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1000(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V

    .line 3365
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$900(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->createFolderAndAddApp(Landroid/view/View;)V

    .line 3366
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$CreateFolderOnDrop;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mCreateFolderView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$902(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
