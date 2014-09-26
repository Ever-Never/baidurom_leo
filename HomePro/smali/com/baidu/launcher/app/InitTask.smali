.class public Lcom/baidu/launcher/app/InitTask;
.super Ljava/lang/Object;
.source "InitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "InitTask"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/launcher/app/InitTask;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "InitTask"

    const-string v1, "init task run"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/app/InitTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getChannelID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setAppChannel(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/app/InitTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getHomeDataCache()Ljava/util/ArrayList;

    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/app/InitTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/Utils;->themeInit_iconBean(Landroid/content/Context;)I

    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/app/InitTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/launcher/ubc/ApplistUpload;

    invoke-direct {v0}, Lcom/baidu/launcher/ubc/ApplistUpload;-><init>()V

    iget-object v1, p0, Lcom/baidu/launcher/app/InitTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ubc/ApplistUpload;->checkForApplistUpload(Landroid/content/Context;)V

    .line 42
    :cond_0
    return-void
.end method
