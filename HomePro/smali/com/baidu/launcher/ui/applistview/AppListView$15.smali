.class Lcom/baidu/launcher/ui/applistview/AppListView$15;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->onAppChanged(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$15;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$15;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$15;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$700(Lcom/baidu/launcher/ui/applistview/AppListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$15;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/AppsDataManager;->deleteItemsInDataBase(Ljava/util/ArrayList;)V

    .line 1511
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$15;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 1512
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$15;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1520
    return-void
.end method
