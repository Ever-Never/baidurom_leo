.class Lcom/baidu/launcher/ui/homeview/HomeView$2;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$2;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$2;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$2;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$2;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->indicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$400(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setAlpha(F)V

    .line 287
    const-string v0, "HomeView"

    const-string v1, "HomeView Hide Dockbar after LayoutInflater complete"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method
