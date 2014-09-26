.class Lcom/baidu/launcher/data/HomeDataManager$7;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->deleteFolderContentsFromDatabase(Lcom/baidu/launcher/data/item/HomeFolderInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$deleteFolder:Z

.field final synthetic val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;ZLcom/baidu/launcher/data/item/HomeFolderInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput-boolean p2, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->val$deleteFolder:Z

    iput-object p3, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1159
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1160
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->val$deleteFolder:Z

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget-wide v1, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1163
    :cond_0
    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/data/HomeDataManager$7;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget-wide v3, v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1165
    return-void
.end method
