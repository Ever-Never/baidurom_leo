.class Lcom/baidu/launcher/data/DisableDataManager$7;
.super Ljava/lang/Object;
.source "DisableDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/DisableDataManager;->updateItemToStart(Landroid/content/Intent;Lcom/baidu/launcher/data/item/BaseItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/DisableDataManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$values:Landroid/content/ContentValues;

.field final synthetic val$values2:Landroid/content/ContentValues;

.field final synthetic val$values3:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/DisableDataManager;Landroid/content/ContentValues;Landroid/content/Intent;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$values2:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$values3:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    #getter for: Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/DisableDataManager;->access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Disable;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$values:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " intent like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    #getter for: Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/DisableDataManager;->access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$values2:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    #getter for: Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/DisableDataManager;->access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$values3:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/data/DisableDataManager$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    return-void
.end method
