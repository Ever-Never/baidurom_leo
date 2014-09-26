.class Lcom/baidu/launcher/ui/applistview/AppListView$18;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

.field final synthetic val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1671
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1683
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeOrAddAppForItemlist()V

    .line 1686
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->val$folder:Lcom/baidu/launcher/data/item/IFolderInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/data/AppsDataManager;->addFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V

    .line 1688
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 1689
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$18;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1690
    return-void
.end method
