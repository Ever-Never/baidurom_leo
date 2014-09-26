.class Lcom/baidu/launcher/ui/applistview/AppListView$8;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->deleteListItem(Lcom/baidu/launcher/ui/dragdrop/DragSource;Landroid/view/View;Lcom/baidu/launcher/data/item/ListItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

.field final synthetic val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 1263
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1264
    .local v2, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget v3, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;->index:I

    .line 1265
    .local v3, folderInex:I
    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getAllAppSize()I

    move-result v0

    .line 1266
    .local v0, appCount:I
    const/4 v6, 0x0

    .line 1267
    .local v6, offset:I
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;->isPreset:Z

    if-eqz v7, :cond_0

    .line 1268
    const/4 v6, 0x1

    .line 1270
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1271
    invoke-virtual {v2, v4}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getFromAllItems(I)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1272
    .local v1, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    add-int v7, v3, v5

    add-int/2addr v7, v6

    iput v7, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    .line 1273
    const-wide/16 v7, -0x3e8

    iput-wide v7, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 1274
    iget-boolean v7, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-eqz v7, :cond_2

    .line 1275
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->insertItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1276
    add-int/lit8 v5, v5, 0x1

    .line 1281
    :goto_1
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-boolean v7, v7, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v7, :cond_1

    .line 1282
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/baidu/launcher/data/AppsDataManager;->addItemInPresetList(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1270
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1278
    :cond_2
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_1

    .line 1286
    .end local v1           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_3
    iget-boolean v7, v2, Lcom/baidu/launcher/data/item/ListFolderInfo;->isPreset:Z

    if-nez v7, :cond_6

    .line 1287
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->removeItem(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1288
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1289
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/baidu/launcher/data/AppsDataManager;->deleteItemInDataBase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1294
    :goto_2
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 1296
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1297
    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    if-ne v7, v9, :cond_4

    .line 1298
    const/4 v7, 0x0

    sput v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    .line 1299
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->displayThumbnailGroup()V

    .line 1300
    iget-object v7, p0, Lcom/baidu/launcher/ui/applistview/AppListView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/applistview/AppListView;->changeBindsForCustom()V

    .line 1302
    :cond_4
    if-lez v0, :cond_5

    .line 1303
    sput v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 1305
    :cond_5
    return-void

    .line 1292
    :cond_6
    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->removeAll()V

    goto :goto_2
.end method
