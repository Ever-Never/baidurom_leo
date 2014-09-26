.class public Lcom/baidu/launcher/service/BusinessSyncIntentService;
.super Landroid/app/IntentService;
.source "BusinessSyncIntentService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/baidu/launcher/service/BusinessSyncIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/service/BusinessSyncIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/launcher/service/BusinessSyncIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private checkType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 41
    const-string v1, "sync"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->syncData()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v1, "connect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->isUserBind()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->initUserInfo()V

    .line 47
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->doWhenConnectivityChange()V

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;

    move-result-object v0

    .line 54
    .local v0, updateManager:Lcom/baidu/launcher/update/UpdateManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/update/UpdateManager;->checkUpdate(I)V

    .line 55
    sget-boolean v1, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasApplistUpload:Z

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/baidu/launcher/ubc/ApplistUpload;

    invoke-direct {v1}, Lcom/baidu/launcher/ubc/ApplistUpload;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ubc/ApplistUpload;->checkForApplistUpload(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    .end local v0           #updateManager:Lcom/baidu/launcher/update/UpdateManager;
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->doWhenConnectivityChange()V

    goto :goto_1

    .line 60
    :cond_3
    const-string v1, "timechange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private doWhenConnectivityChange()V
    .locals 7

    .prologue
    .line 66
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/baidu/launcher/business/BusinessSyncManager;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, appManager:Lcom/baidu/launcher/business/BusinessSyncManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->judgeSyncData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->syncRecomendApp()V

    .line 70
    :cond_0
    new-instance v1, Lcom/baidu/launcher/business/BusinessManager;

    invoke-direct {v1}, Lcom/baidu/launcher/business/BusinessManager;-><init>()V

    .line 71
    .local v1, businessManager:Lcom/baidu/launcher/business/BusinessManager;
    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/baidu/launcher/business/BusinessManager;->getValidStrategyTableId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 72
    .local v4, validStrategyTableID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 73
    .local v3, strategyTableID:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/baidu/launcher/business/BusinessSyncManager;->downloadIconBitmap(J)V

    .line 74
    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isWifiConnection(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/baidu/launcher/business/BusinessSyncManager;->downloadApk(J)V

    goto :goto_0

    .line 78
    .end local v3           #strategyTableID:Ljava/lang/Long;
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->updateUserInfo()V

    .line 79
    return-void
.end method

.method private initUserInfo()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/UserInfoManager;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, userinfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/UserInfoManager;->processUserInfo()V

    .line 89
    return-void
.end method

.method private isUserBind()Z
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/UserInfoManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, userinfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/UserInfoManager;->isBindUserInfo()Z

    move-result v1

    return v1
.end method

.method private syncData()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/BusinessSyncManager;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, appManager:Lcom/baidu/launcher/business/BusinessSyncManager;
    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->isUserBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->syncRecomendApp()V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->initUserInfo()V

    .line 103
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->startNextSyncAlarm()V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->startNextSyncAlarm()V

    goto :goto_0
.end method

.method private updateUserInfo()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-virtual {p0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/UserInfoManager;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, userinfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/UserInfoManager;->updateUserInfo()V

    .line 84
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "aIntent"

    .prologue
    .line 36
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, type:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/baidu/launcher/service/BusinessSyncIntentService;->checkType(Ljava/lang/String;)V

    .line 38
    return-void
.end method
