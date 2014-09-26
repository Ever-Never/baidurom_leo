.class Lcom/baidu/launcher/data/HomeDataManager$4;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeItemInfo;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$4;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/HomeDataManager$4;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iput-object p3, p0, Lcom/baidu/launcher/data/HomeDataManager$4;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1104
    iget-object v0, p0, Lcom/baidu/launcher/data/HomeDataManager$4;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/HomeDataManager$4;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget-wide v1, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1105
    return-void
.end method
