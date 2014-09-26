.class public Lcom/baidu/yi/sdk/cloudstorage/CloudStorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudStorageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudStorageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.baidu.cloudstorage.retry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const-string v1, "CloudStorageReceiver"

    const-string v2, "CloudStorageReceiver:retry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageReceiver;->startService(Landroid/content/Context;)V

    .line 20
    :cond_0
    return-void
.end method
