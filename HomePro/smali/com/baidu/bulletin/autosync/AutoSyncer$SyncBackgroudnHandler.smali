.class Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;
.super Landroid/os/Handler;
.source "AutoSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/autosync/AutoSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncBackgroudnHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;,
        Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncDetailCallback;,
        Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;,
        Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncBackgroudnHandler"


# instance fields
.field private mAllChannelItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAllImageIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bulletin/db/entity/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllNewsDetailInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

.field private mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

.field private mSubscirbTopicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncing:Z

.field private mUpdateTopicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    .locals 2
    .parameter "looper"
    .parameter "autoSyncer"

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSyncing:Z

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllChannelItemInfos:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllNewsDetailInfos:Ljava/util/List;

    .line 159
    iput-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mUpdateTopicList:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    .line 163
    iput-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImageIterator:Ljava/util/Iterator;

    .line 168
    iput-object p2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    .line 169
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    .line 170
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllChannelItemInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mUpdateTopicList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllNewsDetailInfos:Ljava/util/List;

    return-object v0
.end method

.method private isInTime()Z
    .locals 5

    .prologue
    .line 204
    const-string v2, "kk"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    .local v1, hourString:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    .local v0, hour:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x18

    if-le v2, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    .line 209
    :cond_1
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hour is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", can not update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v2, 0x0

    .line 213
    :goto_0
    return v2

    .line 212
    :cond_2
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hour is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private shouldAutoSync()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    const-string v5, "SyncBackgroudnHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIFI = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v2

    sget-object v7, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v2, v7, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " Battery = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->isLow()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " storageAvalible = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " freeSpace = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->isHasFreeStorageSpace()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " autoSyncEnable = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isAutoSyncEnabled()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isGuideShown = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isGuideShown()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v2, "kk"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, hourString:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 186
    .local v0, hour:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x16

    if-lt v2, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x18

    if-le v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x6

    if-gt v2, v5, :cond_5

    .line 187
    :cond_1
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hour is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", can not update"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 193
    :cond_2
    :goto_2
    return v3

    .end local v0           #hour:Ljava/lang/Integer;
    .end local v1           #hourString:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 174
    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto/16 :goto_1

    .line 193
    .restart local v0       #hour:Ljava/lang/Integer;
    .restart local v1       #hourString:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v2

    sget-object v5, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Battery;->isLow()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->isHasFreeStorageSpace()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isAutoSyncEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isGuideShown()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->isInTime()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 221
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "sync handleMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSyncing:Z

    if-eqz v2, :cond_0

    .line 374
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSyncing:Z

    .line 230
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->shouldAutoSync()Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "stop sync for shouldAutoSync false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSyncing:Z

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mUpdateTopicList:Ljava/util/List;

    #calls: Lcom/baidu/bulletin/autosync/AutoSyncer;->notifyStop(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/baidu/bulletin/autosync/AutoSyncer;->access$000(Lcom/baidu/bulletin/autosync/AutoSyncer;Ljava/util/List;)V

    goto :goto_0

    .line 237
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 240
    :pswitch_1
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START_SYNC_MSG_ID mSyncing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSyncing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/autosync/AutoSyncer;->setLastSyncerTime(J)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    #calls: Lcom/baidu/bulletin/autosync/AutoSyncer;->notifyStart()V
    invoke-static {v2}, Lcom/baidu/bulletin/autosync/AutoSyncer;->access$100(Lcom/baidu/bulletin/autosync/AutoSyncer;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllChannelItemInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllNewsDetailInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 249
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImageIterator:Ljava/util/Iterator;

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mUpdateTopicList:Ljava/util/List;

    .line 253
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v13

    .line 254
    .local v13, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    const/4 v11, 0x0

    .local v11, index:I
    :goto_1
    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    array-length v2, v2

    if-ge v11, v2, :cond_4

    .line 256
    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v2, v2, v11

    invoke-virtual {v13, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    sget-object v2, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    aget v2, v2, v11

    invoke-static {v2}, Lcom/baidu/bulletin/ui/settings/ChannelList;->getChannelInfoId(I)I

    move-result v15

    .line 258
    .local v15, tempTopicId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v15           #tempTopicId:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 262
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 263
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 266
    :cond_5
    const/4 v14, 0x0

    .line 268
    .local v14, startIndex:I
    const/4 v2, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 269
    .local v12, message:Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 276
    .end local v11           #index:I
    .end local v12           #message:Landroid/os/Message;
    .end local v13           #settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    .end local v14           #startIndex:I
    :pswitch_2
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "STOP_SYNC_MSG_ID: -------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSyncing:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mUpdateTopicList:Ljava/util/List;

    #calls: Lcom/baidu/bulletin/autosync/AutoSyncer;->notifyStop(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/baidu/bulletin/autosync/AutoSyncer;->access$000(Lcom/baidu/bulletin/autosync/AutoSyncer;Ljava/util/List;)V

    goto/16 :goto_0

    .line 284
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 286
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 290
    .local v5, topicId:I
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_NEXT_CHANNEL_ITEM: index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topicId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v1

    .line 294
    .local v1, dataManager:Lcom/baidu/bulletin/DataManager;
    new-instance v2, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;-><init>(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;I)V

    new-instance v3, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;-><init>(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;I)V

    const/16 v4, 0x14

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/bulletin/DataManager;->requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V

    goto/16 :goto_0

    .line 301
    .end local v1           #dataManager:Lcom/baidu/bulletin/DataManager;
    .end local v5           #topicId:I
    :cond_6
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "GET_NEXT_CHANNEL_ITEM: sen GET_CHANNEL_ITEM_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 309
    .end local v11           #index:I
    :pswitch_4
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "GET_CHANNEL_ITEM_FINISHED: send GET_NEXT_DETAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 312
    .restart local v12       #message:Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 318
    .end local v12           #message:Landroid/os/Message;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 321
    .local v9, detailIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllChannelItemInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_7

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllChannelItemInfos:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 324
    .local v8, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_NEXT_DETAIL: detailIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channelItemInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v1

    .line 326
    .restart local v1       #dataManager:Lcom/baidu/bulletin/DataManager;
    new-instance v2, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncDetailCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncDetailCallback;-><init>(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;I)V

    iget-object v3, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    iget-wide v6, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/baidu/bulletin/DataManager;->requestNewsDetail(Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 328
    .end local v1           #dataManager:Lcom/baidu/bulletin/DataManager;
    .end local v8           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_7
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "GET_NEXT_DETAIL: send GET_DETAIL_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 337
    .end local v9           #detailIndex:I
    :pswitch_6
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "GET_DETAIL_FINISHED: send GET_NEXT_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImageIterator:Ljava/util/Iterator;

    .line 339
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 340
    .restart local v12       #message:Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 346
    .end local v12           #message:Landroid/os/Message;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 347
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ge v11, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImageIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImageIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 350
    .local v10, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v2, "SyncBackgroudnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_NEXT_IMAGE: index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", imgUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    new-instance v3, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;-><init>(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;I)V

    invoke-virtual {v2, v10, v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto/16 :goto_0

    .line 356
    .end local v10           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_8
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "GET_NEXT_IMAGE: send GET_IMGE_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 364
    .end local v11           #index:I
    :pswitch_8
    const-string v2, "SyncBackgroudnHandler"

    const-string v3, "GET_IMAGE_FINISHED: send STOP_SYNC_MSG_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImageIterator:Ljava/util/Iterator;

    .line 366
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
