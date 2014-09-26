.class Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/navigator/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelSelectOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;Lcom/baidu/bulletin/ui/navigator/Navigator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;-><init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 209
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #calls: Lcom/baidu/bulletin/ui/navigator/Navigator;->openPopupwin(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$300(Lcom/baidu/bulletin/ui/navigator/Navigator;Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$ChannelSelectOnClickListener;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method
