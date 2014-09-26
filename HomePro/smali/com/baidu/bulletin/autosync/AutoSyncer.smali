.class public Lcom/baidu/bulletin/autosync/AutoSyncer;
.super Ljava/lang/Object;
.source "AutoSyncer.java"

# interfaces
.implements Lcom/baidu/bulletin/autosync/IAutoSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;,
        Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;
    }
.end annotation


# static fields
.field private static final GET_CHANNEL_ITEM_FINISHED:I = 0x3

.field private static final GET_DETAIL_FINISHED:I = 0x5

.field private static final GET_IMAGE_FINISHED:I = 0x7

.field private static final GET_NEXT_CHANNEL_ITEM:I = 0x2

.field private static final GET_NEXT_DETAIL:I = 0x4

.field private static final GET_NEXT_IMAGE:I = 0x6

.field private static final START_SYNC_MSG_ID:I = 0x0

.field private static final STOP_SYNC_MSG_ID:I = 0xa

.field private static final SYNC_MAX_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AutoSyncer"

.field private static sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;


# instance fields
.field public mBackgroudnHandler:Landroid/os/Handler;

.field private mBackgroundLooper:Landroid/os/Looper;

.field private mLastSyncerTime:J

.field private mOnSyncListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/autosync/AutoSyncer;->sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoSyncer"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroundLooper:Landroid/os/Looper;

    .line 123
    const-string v1, "AutoSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBackgroundLooper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroundLooper:Landroid/os/Looper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    iget-object v2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroundLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;-><init>(Landroid/os/Looper;Lcom/baidu/bulletin/autosync/AutoSyncer;)V

    iput-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroudnHandler:Landroid/os/Handler;

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mLastSyncerTime:J

    .line 127
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/autosync/AutoSyncer;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/autosync/AutoSyncer;->notifyStop(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->notifyStart()V

    return-void
.end method

.method private static close()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/autosync/AutoSyncer;->sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    .line 513
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/autosync/AutoSyncer;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/baidu/bulletin/autosync/AutoSyncer;->sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    if-nez v0, :cond_1

    .line 103
    const-class v1, Lcom/baidu/bulletin/autosync/AutoSyncer;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/autosync/AutoSyncer;->sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/baidu/bulletin/autosync/AutoSyncer;

    invoke-direct {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/autosync/AutoSyncer;->sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/autosync/AutoSyncer;->sAutoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized notifyStart()V
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;

    .line 88
    .local v1, onSyncListener:Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;
    invoke-interface {v1, p0}, Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;->onStart(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #onSyncListener:Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 90
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyStop(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, updateTopicList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mUpdateTopicList:Ljava/util/List;

    .line 94
    iget-object v2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;

    .line 95
    .local v1, onSyncListener:Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;
    invoke-interface {v1, p0}, Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;->onStop(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #onSyncListener:Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 97
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized unregistAll()V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLastSyncerTime()J
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mLastSyncerTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUpdateTopicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mUpdateTopicList:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized registSyncListener(Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;)V
    .locals 1
    .parameter "onSyncListener"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroundLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroundLooper:Landroid/os/Looper;

    .line 504
    invoke-direct {p0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->unregistAll()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroudnHandler:Landroid/os/Handler;

    .line 508
    invoke-static {}, Lcom/baidu/bulletin/autosync/AutoSyncer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSyncerTime(J)V
    .locals 1
    .parameter "syncerTime"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mLastSyncerTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUpdateTopicList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, updateTopicList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mUpdateTopicList:Ljava/util/List;

    .line 140
    return-void
.end method

.method public declared-synchronized sync()V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mBackgroudnHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregistSyncListener(Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;)V
    .locals 1
    .parameter "onSyncListener"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/baidu/bulletin/autosync/AutoSyncer;->mOnSyncListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
