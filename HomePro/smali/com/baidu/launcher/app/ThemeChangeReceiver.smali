.class public Lcom/baidu/launcher/app/ThemeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;,
        Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;
    }
.end annotation


# static fields
.field private static mAppConext:Landroid/content/Context;

.field private static mInstance:Lcom/baidu/launcher/app/ThemeChangeReceiver;


# instance fields
.field private mAppListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mHomeListeners:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppListeners:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppConext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/data/AppsDataManager;->reloadAppsLabel()V

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/app/ThemeChangeReceiver;
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    const-class v1, Lcom/baidu/launcher/app/ThemeChangeReceiver;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppConext:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mInstance:Lcom/baidu/launcher/app/ThemeChangeReceiver;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/launcher/app/ThemeChangeReceiver;

    invoke-direct {v0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;-><init>()V

    sput-object v0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mInstance:Lcom/baidu/launcher/app/ThemeChangeReceiver;

    .line 42
    :cond_0
    sget-object v0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mInstance:Lcom/baidu/launcher/app/ThemeChangeReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAllListeners()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mHomeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method

.method public notifyChange()V
    .locals 4

    .prologue
    .line 100
    const-string v2, "ThemeChangerReceiver"

    const-string v3, "notifyChange "

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mHomeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;

    .line 102
    .local v1, listener:Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;
    invoke-interface {v1}, Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;->onHomeViewDataChanged()V

    goto :goto_0

    .line 104
    .end local v1           #listener:Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;

    .line 105
    .local v1, listener:Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;
    invoke-interface {v1}, Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;->onAppListViewDataChange()V

    goto :goto_1

    .line 107
    .end local v1           #listener:Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.baidu.launcher.theme.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {p1}, Lcom/baidu/launcher/utils/Utilities;->resetCachedIcons(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->clear()V

    .line 59
    sput-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->bLoadNewTheme:Z

    .line 61
    invoke-virtual {p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->notifyChange()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/baidu/launcher/app/ThemeChangeReceiver;->clear()V

    .line 64
    invoke-static {p1}, Lcom/baidu/launcher/utils/Utilities;->resetCachedIcons(Landroid/content/Context;)V

    .line 65
    sput-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->bLoadNewTheme:Z

    goto :goto_0
.end method

.method public registerAppListViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerHomeViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mHomeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mHomeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterAppListViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$AppListViewDataChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mAppListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public unregisterHomeViewDataChangeListener(Lcom/baidu/launcher/app/ThemeChangeReceiver$HomeViewDataChangeListener;)V
    .locals 1
    .parameter "aListener"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/app/ThemeChangeReceiver;->mHomeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method
