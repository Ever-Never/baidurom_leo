.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;
.super Ljava/lang/Object;
.source "QuickLauncherMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->preLoadOtherTabs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f080178

    .line 326
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->val$context:Landroid/content/Context;

    check-cast v2, Lcom/baidu/launcher/app/Launcher;

    const v3, 0x7f080177

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    .line 327
    .local v1, quickLauncherLayer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyInstalledList()Ljava/util/List;

    .line 329
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyLaunchedList()Ljava/util/List;

    .line 330
    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 331
    .local v0, container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->post(Ljava/lang/Runnable;)Z

    .line 361
    .end local v0           #container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 339
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadMostUsedList()Ljava/util/List;

    .line 340
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyLaunchedList()Ljava/util/List;

    .line 341
    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 342
    .restart local v0       #container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 349
    .end local v0           #container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mCurrentShowTab:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 350
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadMostUsedList()Ljava/util/List;

    .line 351
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->loadRecentlyInstalledList()Ljava/util/List;

    .line 352
    invoke-virtual {v1, v4}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    .line 353
    .restart local v0       #container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
