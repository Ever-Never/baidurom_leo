.class Lcom/baidu/launcher/ui/applistview/AppListView$16;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->onAppChanged(Ljava/util/ArrayList;I)V
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
    .line 1532
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$16;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1535
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$16;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppListView$ApplistDataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1536
    return-void
.end method
