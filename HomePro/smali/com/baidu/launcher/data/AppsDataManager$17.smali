.class Lcom/baidu/launcher/data/AppsDataManager$17;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->onBusinessChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$17;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1381
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$17;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->downgradeFolders()V
    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->access$1000(Lcom/baidu/launcher/data/AppsDataManager;)V

    .line 1383
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$17;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyBusinessChanged(Ljava/util/ArrayList;I)V
    invoke-static {v0, v2, v3}, Lcom/baidu/launcher/data/AppsDataManager;->access$1100(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    .line 1384
    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$17;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->loadPresetItems()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->access$1200(Lcom/baidu/launcher/data/AppsDataManager;)Ljava/util/ArrayList;

    .line 1385
    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$17;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iget-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$17;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mPresetList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->access$1300(Lcom/baidu/launcher/data/AppsDataManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    #calls: Lcom/baidu/launcher/data/AppsDataManager;->notifyBusinessChanged(Ljava/util/ArrayList;I)V
    invoke-static {v2, v0, v3}, Lcom/baidu/launcher/data/AppsDataManager;->access$1100(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;I)V

    .line 1386
    monitor-exit v1

    .line 1387
    return-void

    .line 1386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
