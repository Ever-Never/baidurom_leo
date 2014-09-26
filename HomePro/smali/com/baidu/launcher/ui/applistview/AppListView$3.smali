.class Lcom/baidu/launcher/ui/applistview/AppListView$3;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->bindItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 425
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    .line 426
    .local v0, appsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getApps()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 427
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 428
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 429
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v4

    const-string v5, "isDisable != 0 "

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/data/DisableDataManager;->getDisableApp(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    #setter for: Lcom/baidu/launcher/ui/applistview/AppListView;->disableApps:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$602(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getApps()Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 431
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getApps()Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->disableApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$600(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 432
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->disableApps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$600(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 433
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 438
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getAllPresetItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 440
    .local v2, preset:Lcom/baidu/launcher/data/item/ListItemInfo;
    instance-of v3, v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_1

    .line 441
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getApps()Ljava/util/Vector;

    move-result-object v3

    check-cast v2, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local v2           #preset:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    .restart local v2       #preset:Lcom/baidu/launcher/data/item/ListItemInfo;
    :cond_1
    instance-of v3, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local v2           #preset:Lcom/baidu/launcher/data/item/ListItemInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 447
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 451
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$800(Lcom/baidu/launcher/ui/applistview/AppListView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 452
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->clearAllPages()V

    .line 453
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v3}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateApps(ZZ)V

    .line 455
    :cond_4
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$3;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #setter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mReLoaded:Z
    invoke-static {v3, v6}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$802(Lcom/baidu/launcher/ui/applistview/AppListView;Z)Z

    .line 457
    return-void
.end method
