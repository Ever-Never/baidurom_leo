.class Lcom/baidu/launcher/data/AppsDataManager$9;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->deleteItemInDataBase(Lcom/baidu/launcher/data/item/ListItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/ListItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$9;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$9;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1019
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/AppsDataManager$9;->val$item:Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-wide v1, v1, Lcom/baidu/launcher/data/item/ListItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1020
    return-void
.end method
