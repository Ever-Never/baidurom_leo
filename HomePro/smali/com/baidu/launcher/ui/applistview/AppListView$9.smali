.class Lcom/baidu/launcher/ui/applistview/AppListView$9;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;
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
    .line 1350
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$9;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1354
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1357
    :cond_0
    return-void
.end method
