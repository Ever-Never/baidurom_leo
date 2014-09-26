.class Lcom/baidu/launcher/ui/applistview/AppListView$24;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->exitDisableApps(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

.field final synthetic val$save:Z

.field final synthetic val$update:Z


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-boolean p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->val$save:Z

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->val$update:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppListView;->mAppsView:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->access$200(Lcom/baidu/launcher/ui/applistview/AppListView;)Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->val$save:Z

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->saveAppDisableState(Z)V

    .line 1889
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->val$save:Z

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView;->clearCurrentChanges(Z)V

    .line 1890
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->val$update:Z

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$24;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 1893
    :cond_0
    return-void
.end method
