.class Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "EditAppsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/editview/EditAppsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mRefreshUI:Z

.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditAppsListView;Z)V
    .locals 1
    .parameter
    .parameter "b"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->mRefreshUI:Z

    .line 909
    iput-boolean p2, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->mRefreshUI:Z

    .line 910
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 905
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 922
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v7, v7, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 923
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$000(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/data/AppsDataManager;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 925
    .local v4, info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v7, v7, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 927
    .end local v4           #info:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_0
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$100(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 930
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 931
    .local v2, hideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.baidu.searchbox"

    const-string v9, "com.baidu.searchbox.widget.SearchWidgetProvider"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.baidu.searchbox"

    const-string v9, "com.baidu.searchbox.widget.TransSearchWidgetProvider"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJB()Z

    move-result v7

    if-nez v7, :cond_1

    .line 936
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.baidu.home2"

    const-string v9, "com.baidu.launcher.searchbar.BaiduSearchWidgetProvider"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_1
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 941
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 943
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v7, v7, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 946
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v6, shortcutsIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$200(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 949
    .local v5, shortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 950
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v7, v7, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 962
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {v1}, Lcom/baidu/launcher/data/item/ListFolderInfo;-><init>()V

    .line 963
    .local v1, firstFolder:Lcom/baidu/launcher/data/item/ListFolderInfo;
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$300(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0007

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/baidu/launcher/data/item/ListFolderInfo;->setTitle(Ljava/lang/String;)V

    .line 964
    iput-object v10, v1, Lcom/baidu/launcher/data/item/ListFolderInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 967
    iget-object v7, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditAppsListView;->mApps:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$500(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #getter for: Lcom/baidu/launcher/ui/editview/EditAppsListView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$400(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/launcher/data/AppsDataManager;->getAllVisiableApps()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 969
    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 905
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #calls: Lcom/baidu/launcher/ui/editview/EditAppsListView;->isDataReady()Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$600(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #calls: Lcom/baidu/launcher/ui/editview/EditAppsListView;->updatePageCounts()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$700(Lcom/baidu/launcher/ui/editview/EditAppsListView;)V

    .line 976
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #calls: Lcom/baidu/launcher/ui/editview/EditAppsListView;->testDataReady()Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$800(Lcom/baidu/launcher/ui/editview/EditAppsListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->requestLayout()V

    .line 987
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 988
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #calls: Lcom/baidu/launcher/ui/editview/EditAppsListView;->updatePageCounts()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$700(Lcom/baidu/launcher/ui/editview/EditAppsListView;)V

    .line 980
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->mRefreshUI:Z

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    #calls: Lcom/baidu/launcher/ui/editview/EditAppsListView;->reloadCurrentPage()I
    invoke-static {v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$900(Lcom/baidu/launcher/ui/editview/EditAppsListView;)I

    move-result v1

    #calls: Lcom/baidu/launcher/ui/editview/EditAppsListView;->invalidatePageData(I)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->access$1000(Lcom/baidu/launcher/ui/editview/EditAppsListView;I)V

    goto :goto_0

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->syncPages()V

    .line 984
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->clearAllPages()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$LoadDataTask;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v0, v0, Lcom/baidu/launcher/ui/editview/EditAppsListView;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 917
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 918
    return-void
.end method
