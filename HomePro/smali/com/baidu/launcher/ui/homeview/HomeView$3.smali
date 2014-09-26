.class Lcom/baidu/launcher/ui/homeview/HomeView$3;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->show(ZLjava/lang/Object;)V
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
    .line 343
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$3;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$3;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 348
    .local v0, floatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->homeViewVisble()V

    .line 349
    return-void
.end method
