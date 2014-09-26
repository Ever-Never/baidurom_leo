.class Lcom/baidu/launcher/ui/applistview/AppListView$7;
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

.field final synthetic val$deleteView:Landroid/view/View;

.field final synthetic val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;Lcom/baidu/launcher/data/item/ListItemInfo;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    iput-object p3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->val$deleteView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1239
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-wide v2, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    const-wide/16 v4, -0x3e8

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1240
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->val$deleteView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getFolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .line 1243
    .local v0, folder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-wide v2, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    iget-wide v4, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1244
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->val$dragInfo:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 1245
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$7;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    goto :goto_0
.end method
