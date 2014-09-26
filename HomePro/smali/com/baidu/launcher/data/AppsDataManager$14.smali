.class Lcom/baidu/launcher/data/AppsDataManager$14;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->batchUpdateItemInDatabase(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$allItemList:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$14;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$14;->val$allItemList:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1132
    iget-object v8, p0, Lcom/baidu/launcher/data/AppsDataManager$14;->val$allItemList:Ljava/util/Vector;

    new-array v9, v12, [Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/baidu/launcher/data/item/ListItemInfo;

    .line 1133
    .local v4, itemList:[Lcom/baidu/launcher/data/item/ListItemInfo;
    array-length v6, v4

    .line 1134
    .local v6, size:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1135
    .local v7, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1136
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 1137
    .local v5, result:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1138
    .local v3, info:Lcom/baidu/launcher/data/item/ListItemInfo;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 1139
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1140
    aget-object v3, v4, v2

    .line 1141
    iput v2, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1142
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/baidu/launcher/data/item/ListItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1143
    iget-wide v8, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    invoke-static {v8, v9, v12}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v5

    .line 1146
    sget-object v9, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "intent = ? "

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/String;

    move-object v8, v3

    check-cast v8, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-virtual {v1, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1147
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 1148
    sget-object v8, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1149
    if-eqz v5, :cond_0

    .line 1150
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    .line 1138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1154
    .end local v0           #count:I
    :cond_1
    return-void
.end method
