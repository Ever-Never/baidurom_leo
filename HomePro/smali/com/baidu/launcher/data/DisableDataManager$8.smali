.class Lcom/baidu/launcher/data/DisableDataManager$8;
.super Ljava/lang/Object;
.source "DisableDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/DisableDataManager;->updateItemVisableInDB(Lcom/baidu/launcher/data/item/ListItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/DisableDataManager;

.field final synthetic val$listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/baidu/launcher/data/DisableDataManager$8;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/DisableDataManager$8;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/DisableDataManager$8;->val$listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 263
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager$8;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    #getter for: Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/DisableDataManager;->access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Disable;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/launcher/data/DisableDataManager$8;->val$values:Landroid/content/ContentValues;

    const-string v3, "intent = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/launcher/data/DisableDataManager$8;->val$listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v5, v5, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    return-void
.end method
