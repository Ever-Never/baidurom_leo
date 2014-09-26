.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;
.super Ljava/lang/Object;
.source "QuickLauncherLayoutContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->syncLaunchEventToApplist(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

.field final synthetic val$componentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 441
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 442
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

    .line 443
    .local v0, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    .line 445
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/data/AppsDataManager;->updateItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 449
    .end local v0           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_1
    return-void
.end method
