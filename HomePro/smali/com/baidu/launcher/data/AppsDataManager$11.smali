.class Lcom/baidu/launcher/data/AppsDataManager$11;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->addFolderToDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1051
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1052
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v6, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1053
    .local v4, result:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 1054
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    .line 1056
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v6}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getSize()I

    move-result v3

    .line 1059
    .local v3, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1060
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->get(I)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1061
    .local v2, item:Lcom/baidu/launcher/data/item/ListItemInfo;
    iget-object v6, p0, Lcom/baidu/launcher/data/AppsDataManager$11;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v6, v6, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    iput-wide v6, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    .line 1062
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1063
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "container"

    iget-wide v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->container:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1064
    const-string v6, "sort_index"

    iget v7, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    iget-wide v6, v2, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    .end local v2           #item:Lcom/baidu/launcher/data/item/ListItemInfo;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method
