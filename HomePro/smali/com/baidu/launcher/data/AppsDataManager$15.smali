.class Lcom/baidu/launcher/data/AppsDataManager$15;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->deleteFolderContentsFromDatabase(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
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
    .line 1237
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$15;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$15;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1239
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1240
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/baidu/launcher/data/AppsDataManager$15;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v1, v1, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1241
    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$15;->val$folder:Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v3, v3, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1243
    return-void
.end method
