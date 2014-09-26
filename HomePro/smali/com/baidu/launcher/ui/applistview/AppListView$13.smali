.class Lcom/baidu/launcher/ui/applistview/AppListView$13;
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


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$13;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1469
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$13;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getItems()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$13;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppListView;->getComparator()Ljava/util/Comparator;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1100(Lcom/baidu/launcher/ui/applistview/AppListView;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1471
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$13;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->updateAllItemToDB()V

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$13;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1478
    return-void
.end method
