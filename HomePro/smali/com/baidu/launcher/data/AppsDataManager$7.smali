.class Lcom/baidu/launcher/data/AppsDataManager$7;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListItemInfo;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$7;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$7;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    iput-object p3, p0, Lcom/baidu/launcher/data/AppsDataManager$7;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 983
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/AppsDataManager$7;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-wide v1, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$7;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 984
    return-void
.end method
