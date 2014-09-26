.class Lcom/baidu/launcher/data/AppsDataManager$6;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->folderUpdateNotify(Lcom/baidu/launcher/data/item/ListItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/ListItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$6;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$6;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v0, changelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListItemInfo;>;"
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$6;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$6;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    #getter for: Lcom/baidu/launcher/data/AppsDataManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->access$600(Lcom/baidu/launcher/data/AppsDataManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;

    .line 969
    .local v2, listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;->onFolderChanged(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 971
    .end local v2           #listener:Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
    :cond_0
    return-void
.end method
