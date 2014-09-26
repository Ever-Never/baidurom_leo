.class Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/app/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaiduWidgetUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1370
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$1400(Lcom/baidu/launcher/app/Launcher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;-><init>(Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1379
    return-void
.end method
