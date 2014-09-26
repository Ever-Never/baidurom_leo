.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;
.super Ljava/lang/Object;
.source "QuickLauncherMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;

.field final synthetic val$container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->val$container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 356
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->val$container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->val$container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getmMostUsedLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mMostUsedAppInfos:Ljava/util/List;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->loadShowViews(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;Ljava/util/List;Z)V

    .line 357
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->val$container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->val$container:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getmRecentlyInstalledLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4$3;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mRecntlyInstalledAppInfos:Ljava/util/List;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->loadShowViews(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;Ljava/util/List;Z)V

    .line 358
    return-void
.end method
