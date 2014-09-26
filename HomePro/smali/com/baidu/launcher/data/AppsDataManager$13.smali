.class Lcom/baidu/launcher/data/AppsDataManager$13;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->insertItemsInDatabase(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$itemList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$13;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$13;->val$itemList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1112
    const-string v4, "AppsDataManager"

    const-string v5, "====>insertItemsInDatabase()"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v4, p0, Lcom/baidu/launcher/data/AppsDataManager$13;->val$itemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1114
    .local v2, size:I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 1115
    .local v3, values:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1116
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v3, v0

    .line 1117
    iget-object v4, p0, Lcom/baidu/launcher/data/AppsDataManager$13;->val$itemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    aget-object v5, v3, v0

    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/baidu/launcher/data/item/ListAppInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 1115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1119
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 1120
    .local v1, newlyAdded:I
    if-ge v1, v2, :cond_1

    .line 1121
    const-string v4, "AppsDataManager"

    const-string v5, "insertItemsInDatabase FAIL!"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_1
    const-string v4, "AppsDataManager"

    const-string v5, "<====insertItemsInDatabase()"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void
.end method
