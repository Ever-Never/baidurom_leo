.class Lcom/baidu/launcher/data/HomeDataManager$10;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->deleteScreenContentsFromDatabase(ILjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$folders:Ljava/util/ArrayList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput p2, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->val$index:I

    iput-object p3, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->val$folders:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1233
    iget-object v4, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1234
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->val$index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, -0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1238
    iget-object v4, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->val$folders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 1239
    .local v1, folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    sget-object v4, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1243
    .end local v1           #folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :cond_0
    iget v4, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->val$index:I

    add-int/lit8 v2, v4, 0x1

    .local v2, i:I
    :goto_1
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_1

    .line 1244
    iget-object v4, p0, Lcom/baidu/launcher/data/HomeDataManager$10;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    add-int/lit8 v5, v2, -0x1

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->moveContentToScreen(II)V
    invoke-static {v4, v2, v5}, Lcom/baidu/launcher/data/HomeDataManager;->access$200(Lcom/baidu/launcher/data/HomeDataManager;II)V

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1246
    :cond_1
    return-void
.end method
