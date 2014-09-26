.class Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 1614
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1615
    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1616
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1630
    const-string v0, "HomeView"

    const-string v1, "refresh home view after load favorites data in sub thread finish"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->loadView()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$1000(Lcom/baidu/launcher/ui/homeview/HomeView;)V

    .line 1632
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1620
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "key_load_favorites"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1622
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1626
    return-void
.end method
