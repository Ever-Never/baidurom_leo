.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$4;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->saveAppDisableState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$4;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2416
    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$4;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/AppListView;

    .line 2417
    .local v0, allAppList:Lcom/baidu/launcher/ui/applistview/AppListView;
    new-instance v1, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2418
    return-void
.end method
