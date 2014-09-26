.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->dissolutionOfTheFolder(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

.field final synthetic val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3486
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3489
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget v2, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->index:I

    .line 3490
    .local v2, folderInex:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v4}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getSize()I

    move-result v0

    .line 3492
    .local v0, appCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3493
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v4, v3}, Lcom/baidu/launcher/data/item/ListFolderInfo;->get(I)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 3494
    .local v1, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    add-int v4, v2, v3

    iput v4, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 3495
    const-wide/16 v4, -0x3e8

    iput-wide v4, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 3496
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v4, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->insertItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 3492
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3498
    .end local v1           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 3499
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3500
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1100(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->val$listFolderInfo:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/data/AppsDataManager;->deleteItemInDataBase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 3502
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 3503
    iget-object v4, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->isVisible()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateApps(ZZ)V

    .line 3504
    return-void
.end method
