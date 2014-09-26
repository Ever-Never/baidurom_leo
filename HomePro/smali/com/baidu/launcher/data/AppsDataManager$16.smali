.class Lcom/baidu/launcher/data/AppsDataManager$16;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->updateFolderContentsInDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1253
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v3, v3, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1254
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iget-object v4, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    const-wide/16 v5, -0x3e8

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/launcher/data/AppsDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    .line 1260
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1261
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "container"

    const/16 v4, -0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1262
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v6, v6, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1265
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v3}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1266
    .local v1, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iget-object v4, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v4, v4, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    iget v6, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/baidu/launcher/data/AppsDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    goto :goto_1

    .line 1256
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iget-object v4, p0, Lcom/baidu/launcher/data/AppsDataManager$16;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    goto :goto_0

    .line 1268
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method
