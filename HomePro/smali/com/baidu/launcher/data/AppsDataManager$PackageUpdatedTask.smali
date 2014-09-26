.class Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;I[Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"
    .parameter "permanent"

    .prologue
    .line 873
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput p2, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->mOp:I

    .line 875
    iput-object p3, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 876
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 879
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 880
    .local v6, packages:[Ljava/lang/String;
    array-length v0, v6

    .line 881
    .local v0, N:I
    iget v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->mOp:I

    packed-switch v9, :pswitch_data_0

    .line 906
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 908
    .local v2, changed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 909
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    iget-object v2, v9, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    .line 910
    iget v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->mOp:I

    packed-switch v9, :pswitch_data_1

    .line 925
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/baidu/launcher/data/AllAppsList;->added:Ljava/util/ArrayList;

    .line 927
    :cond_1
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 928
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    iget-object v2, v9, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 929
    iget v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->mOp:I

    packed-switch v9, :pswitch_data_2

    .line 945
    :goto_2
    :pswitch_1
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/baidu/launcher/data/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 947
    :cond_2
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/launcher/data/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 948
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    iget-object v2, v9, Lcom/baidu/launcher/data/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 949
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/baidu/launcher/data/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 950
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v10, 0x2

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V
    invoke-static {v9, v2, v10}, Lcom/baidu/launcher/data/AppsDataManager;->access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    .line 954
    :cond_3
    const-string v9, "####"

    const-string v10, "=================================="

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v7

    .line 956
    .local v7, qm:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->recycleRecntInstallList()V

    .line 957
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyInstalledList()Ljava/util/List;

    .line 958
    return-void

    .line 883
    .end local v2           #changed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    .end local v7           #qm:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;
    :pswitch_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_0

    .line 884
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v9, v10, v11}, Lcom/baidu/launcher/data/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 883
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 888
    .end local v3           #i:I
    :pswitch_3
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    invoke-virtual {v9}, Lcom/baidu/launcher/data/AppsDataManager;->isAppLoaded()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 889
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lcom/baidu/launcher/data/AllAppsList;->addAppAndInit(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 893
    :pswitch_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v8, savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    invoke-virtual {v9, v8}, Lcom/baidu/launcher/data/AppsDataManager;->loadSavedApp(Ljava/util/ArrayList;)V

    .line 895
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v0, :cond_0

    .line 896
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v9, v10, v11, v8}, Lcom/baidu/launcher/data/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 895
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 901
    .end local v3           #i:I
    .end local v8           #savedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v0, :cond_0

    .line 902
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mAllAppsList:Lcom/baidu/launcher/data/AllAppsList;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$300(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/AllAppsList;

    move-result-object v9

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/data/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 901
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 912
    .end local v3           #i:I
    .restart local v2       #changed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    :pswitch_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 913
    .local v1, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/4 v9, 0x3

    iput v9, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 914
    const-wide/32 v9, 0x7fffffff

    iput-wide v9, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    goto :goto_6

    .line 916
    .end local v1           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_4
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v10, 0x0

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V
    invoke-static {v9, v2, v10}, Lcom/baidu/launcher/data/AppsDataManager;->access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 920
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_7
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v10, 0x5

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V
    invoke-static {v9, v2, v10}, Lcom/baidu/launcher/data/AppsDataManager;->access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    goto/16 :goto_1

    .line 931
    :pswitch_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 932
    .local v5, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mIconCache:Lcom/baidu/launcher/data/IconCache;
    invoke-static {v9}, Lcom/baidu/launcher/data/AppsDataManager;->access$500(Lcom/baidu/launcher/data/AppsDataManager;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v9

    iget-object v10, v5, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/data/IconCache;->remove(Landroid/content/ComponentName;)V

    goto :goto_7

    .line 934
    .end local v5           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_5
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v10, 0x1

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V
    invoke-static {v9, v2, v10}, Lcom/baidu/launcher/data/AppsDataManager;->access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    goto/16 :goto_2

    .line 937
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_9
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v10, 0x6

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V
    invoke-static {v9, v2, v10}, Lcom/baidu/launcher/data/AppsDataManager;->access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    goto/16 :goto_2

    .line 940
    :pswitch_a
    iget-object v9, p0, Lcom/baidu/launcher/data/AppsDataManager$PackageUpdatedTask;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v10, 0x4

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyChange(Ljava/util/ArrayList;I)V
    invoke-static {v9, v2, v10}, Lcom/baidu/launcher/data/AppsDataManager;->access$400(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    goto/16 :goto_2

    .line 881
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 910
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 929
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method
