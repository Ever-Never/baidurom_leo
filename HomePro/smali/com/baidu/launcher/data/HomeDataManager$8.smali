.class Lcom/baidu/launcher/data/HomeDataManager$8;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->updateFolderContentsInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeFolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->val$folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->val$folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1176
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->val$folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget-wide v4, v4, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->val$folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v0}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1179
    .local v1, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$8;->val$folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget-wide v2, v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    iget v4, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    iget v5, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v6, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    goto :goto_0

    .line 1181
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    return-void
.end method
