.class Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaiduThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity$HandleReceiver;-><init>(Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 370
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :cond_0
    return-void
.end method
