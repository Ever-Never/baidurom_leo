.class Lcom/baidu/launcher/data/DisableDataManager$6;
.super Ljava/lang/Object;
.source "DisableDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/DisableDataManager;->deleteDisableFromDB(Lcom/baidu/launcher/data/item/ListAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/DisableDataManager;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/ListAppInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/DisableDataManager;Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/baidu/launcher/data/DisableDataManager$6;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/DisableDataManager$6;->val$info:Lcom/baidu/launcher/data/item/ListAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/data/DisableDataManager$6;->this$0:Lcom/baidu/launcher/data/DisableDataManager;

    #getter for: Lcom/baidu/launcher/data/DisableDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/data/DisableDataManager;->access$000(Lcom/baidu/launcher/data/DisableDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/data/LauncherSettings$Disable;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/data/DisableDataManager$6;->val$info:Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    return-void
.end method
