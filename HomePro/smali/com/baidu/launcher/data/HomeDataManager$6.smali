.class Lcom/baidu/launcher/data/HomeDataManager$6;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->addFolderInDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/HomeFolderInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeFolderInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->val$item:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    iget-object v3, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1137
    .local v9, result:Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 1142
    :cond_0
    return-void

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->val$item:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    .line 1139
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->val$item:Lcom/baidu/launcher/data/item/HomeFolderInfo;

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

    .line 1140
    .local v1, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$6;->val$item:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget-wide v2, v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    iget v4, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    iget v5, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v6, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIIIZ)V

    goto :goto_0
.end method
