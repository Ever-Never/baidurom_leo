.class public Lcom/baidu/launcher/business/BusinessSyncManager;
.super Ljava/lang/Object;
.source "BusinessSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mCallBack:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/business/BusinessSyncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/business/BusinessSyncManager$1;-><init>(Lcom/baidu/launcher/business/BusinessSyncManager;)V

    iput-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mCallBack:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    .line 65
    iput-object p1, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/launcher/business/BusinessSyncManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/business/BusinessSyncManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public downloadApk(J)V
    .locals 1
    .parameter "aStrategyTableId"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isWifiConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->IsSdCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/launcher/business/BusinessDAOUtil;->downloadApk(Landroid/content/Context;J)V

    .line 136
    :cond_0
    return-void
.end method

.method public downloadIconBitmap(J)V
    .locals 1
    .parameter "aStrategyTableId"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/launcher/business/BusinessDAOUtil;->donwloadIconBitmap(Landroid/content/Context;J)V

    .line 129
    return-void
.end method

.method public getBusinessStrategyId()J
    .locals 6

    .prologue
    .line 146
    iget-object v2, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_ID:Ljava/lang/String;

    sget-wide v4, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->DEFAULT_BUSINESS_STRATEGY_ID:J

    invoke-static {v2, v3, v4, v5}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 149
    .local v0, strategyId:J
    return-wide v0
.end method

.method public judgeSyncData()Z
    .locals 10

    .prologue
    .line 161
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_SYNC_TIMIE:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 163
    .local v4, synctime:J
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_SYNC_INTERVAL:Ljava/lang/String;

    sget-wide v8, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->DEFAULT_BUSINESS_SYNC_INTERVAL:J

    invoke-static {v6, v7, v8, v9}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 166
    .local v2, syncinterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, nowtime:J
    add-long v6, v4, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/baidu/launcher/business/BusinessSyncManager;->syncRecomendApp()V

    .line 169
    const/4 v6, 0x1

    .line 171
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected saveResponceInfo(Lcom/baidu/launcher/business/item/RecommendResponceInfo;)V
    .locals 11
    .parameter "aInfo"

    .prologue
    .line 86
    new-instance v0, Lcom/baidu/launcher/business/BusinessDAOUtil;

    invoke-direct {v0}, Lcom/baidu/launcher/business/BusinessDAOUtil;-><init>()V

    .line 87
    .local v0, businessDAO:Lcom/baidu/launcher/business/BusinessDAOUtil;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Lcom/baidu/launcher/utils/Constant;->STRATEGY_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "strategy_key"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getStrategyId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "start"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getStart()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "end"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getEnd()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "channel_id"

    iget-object v9, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getChannelID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v7, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, p1, v2}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertRecommendAppInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendResponceInfo;Ljava/util/ArrayList;)V

    .line 99
    :try_start_0
    iget-object v7, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.home2"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 102
    .local v3, ret:[Landroid/content/ContentProviderResult;
    if-eqz v3, :cond_0

    array-length v7, v3

    if-lez v7, :cond_0

    .line 103
    const/4 v7, 0x0

    aget-object v4, v3, v7

    .line 105
    .local v4, strategyRet:Landroid/content/ContentProviderResult;
    iget-object v7, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 107
    .local v5, strategyTableId:J
    iget-object v7, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/baidu/launcher/business/BusinessDAOUtil;->donwloadIconBitmap(Landroid/content/Context;J)V

    .line 108
    new-instance v7, Lcom/baidu/launcher/utils/AlarmHelper;

    invoke-direct {v7}, Lcom/baidu/launcher/utils/AlarmHelper;-><init>()V

    iget-object v8, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/utils/AlarmHelper;->refreshAlarm(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0, v5, v6}, Lcom/baidu/launcher/business/BusinessSyncManager;->downloadApk(J)V

    .line 110
    iget-object v7, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_ID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getStrategyId()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 112
    iget-object v7, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_SYNC_TIMIE:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v3           #ret:[Landroid/content/ContentProviderResult;
    .end local v4           #strategyRet:Landroid/content/ContentProviderResult;
    .end local v5           #strategyTableId:J
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Landroid/os/RemoteException;
    sget-object v7, Lcom/baidu/launcher/business/BusinessSyncManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, e:Landroid/content/OperationApplicationException;
    sget-object v7, Lcom/baidu/launcher/business/BusinessSyncManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method protected saveSyncInterval(J)V
    .locals 6
    .parameter "aTimer"

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_SYNC_INTERVAL:Ljava/lang/String;

    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 158
    :cond_0
    return-void
.end method

.method public startNextSyncAlarm()V
    .locals 6

    .prologue
    .line 139
    iget-object v2, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_SYNC_INTERVAL:Ljava/lang/String;

    sget-wide v4, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->DEFAULT_BUSINESS_SYNC_INTERVAL:J

    invoke-static {v2, v3, v4, v5}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 142
    .local v0, syncInterval:J
    new-instance v2, Lcom/baidu/launcher/utils/AlarmHelper;

    invoke-direct {v2}, Lcom/baidu/launcher/utils/AlarmHelper;-><init>()V

    iget-object v3, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/launcher/utils/AlarmHelper;->setRecommendAppAlarm(Landroid/content/Context;J)V

    .line 143
    return-void
.end method

.method public declared-synchronized syncRecomendApp()V
    .locals 10

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 70
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_START_SYNC:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 73
    .local v4, startsynctime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 74
    .local v1, nowtime:J
    sget-wide v6, Lcom/baidu/launcher/LauncherConfig;->SAFE_BUSINESS_SYNC_AFTER:J

    add-long/2addr v6, v4

    cmp-long v6, v1, v6

    if-lez v6, :cond_0

    .line 75
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_BUSINESS_START_SYNC:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 76
    new-instance v3, Lcom/baidu/launcher/business/item/RecommendPostInfo;

    invoke-direct {v3}, Lcom/baidu/launcher/business/item/RecommendPostInfo;-><init>()V

    .line 77
    .local v3, postinfo:Lcom/baidu/launcher/business/item/RecommendPostInfo;
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/launcher/business/item/RecommendPostInfo;->setCuid(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/baidu/launcher/business/BusinessManager;

    invoke-direct {v0}, Lcom/baidu/launcher/business/BusinessManager;-><init>()V

    .line 79
    .local v0, businessManager:Lcom/baidu/launcher/business/BusinessManager;
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/business/BusinessManager;->getMaxStrategyId(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/baidu/launcher/business/item/RecommendPostInfo;->setStrategyId(J)V

    .line 80
    iget-object v6, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/baidu/launcher/business/BusinessSyncManager;->mCallBack:Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;

    invoke-static {v6, v3, v7}, Lcom/baidu/launcher/protocol/Agent;->postSyncData(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendPostInfo;Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;)V

    .line 82
    .end local v0           #businessManager:Lcom/baidu/launcher/business/BusinessManager;
    .end local v3           #postinfo:Lcom/baidu/launcher/business/item/RecommendPostInfo;
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 69
    .end local v1           #nowtime:J
    .end local v4           #startsynctime:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
