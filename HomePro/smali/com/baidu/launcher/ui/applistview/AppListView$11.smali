.class Lcom/baidu/launcher/ui/applistview/AppListView$11;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->closeHideApps(ZZ)V
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
    .line 1417
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$11;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iput-boolean p2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$11;->val$save:Z

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/applistview/AppListView$11;->val$update:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$11;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$11;->val$save:Z

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppListView$11;->val$update:Z

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->exitHideApps(ZZ)V

    .line 1421
    return-void
.end method
