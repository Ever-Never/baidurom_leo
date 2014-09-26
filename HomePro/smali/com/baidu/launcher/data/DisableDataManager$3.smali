.class Lcom/baidu/launcher/data/DisableDataManager$3;
.super Ljava/lang/Object;
.source "DisableDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/DisableDataManager;->updateHomeDataFormSamePackageName(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/DisableDataManager;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/launcher/data/DisableDataManager$3;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/DisableDataManager$3;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/DisableDataManager$3;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 112
    iget-object v1, p0, Lcom/baidu/launcher/data/DisableDataManager$3;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    #getter for: Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/data/DisableDataManager;->access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/baidu/launcher/data/DisableDataManager$3;->val$values:Landroid/content/ContentValues;

    const-string v4, "intent = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/launcher/data/DisableDataManager$3;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v6, v6, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, rowId:I
    return-void
.end method
