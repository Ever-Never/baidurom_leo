.class Lcom/baidu/launcher/ui/homeview/DockBar$7;
.super Ljava/lang/Object;
.source "DockBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;->updateAppClickCount(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$7;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/DockBar$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/DockBar$7;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1651
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar$7;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 1653
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1654
    .local v0, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/DockBar$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 1656
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/DockBar$7;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 1660
    .end local v0           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_1
    return-void
.end method
