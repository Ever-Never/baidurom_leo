.class Lcom/baidu/bulletin/ui/navigator/Navigator$1;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/navigator/Navigator;-><init>(Landroid/view/View;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$1;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 90
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForRefreshIcon()V

    .line 92
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$1;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mDragListViewComponent:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$000(Lcom/baidu/bulletin/ui/navigator/Navigator;)Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->refresh()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$1;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->showNetworkSetting(Landroid/content/Context;)V

    goto :goto_0
.end method
