.class Lcom/baidu/launcher/ui/applistview/AppListView$22;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->createDeleteAppDialog(Lcom/baidu/launcher/data/item/ListAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static {v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->deleteApplication(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 1834
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v1, :cond_0

    .line 1835
    const/4 v0, 0x0

    .line 1836
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v1, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mDeleteAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/data/item/ListAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1839
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$22;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->uninstallApp(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1843
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method
