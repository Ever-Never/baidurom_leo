.class public Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;
.super Landroid/content/BroadcastReceiver;
.source "StorageStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageStatusMonitor"

.field static mInstance:Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private is_registered:Z

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->is_registered:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->observers:Ljava/util/List;

    .line 95
    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;
    .locals 2

    .prologue
    .line 24
    sget-object v1, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->mInstance:Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->mInstance:Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    monitor-exit v1

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->mInstance:Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->mInstance:Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method notifyObservers(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;

    invoke-interface {v1, p1}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;->onChange(Ljava/lang/String;)V

    .line 90
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    const-string v0, "StorageStatusMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on receive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->notifyObservers(Ljava/lang/String;)V

    .line 50
    :cond_1
    return-void
.end method

.method public registerMonitor(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->is_registered:Z

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->is_registered:Z

    .line 71
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unregisterMonitor(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->is_registered:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->is_registered:Z

    .line 79
    :cond_0
    return-void
.end method
