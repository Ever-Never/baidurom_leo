.class final Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;
.super Ljava/lang/Object;
.source "PageCacheSerializable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/dao/PageCacheSerializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataSession"
.end annotation


# static fields
.field private static final CACHE_LOOP_FETCH_COUNT:I = 0x5

.field private static final DATA_CACHE_MAX_SIZE:I = 0x16e360


# instance fields
.field private mAsyncCachingPosition:I

.field private mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

.field private mDataCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/baidu/bulletin/entity/ChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAsyncCaching:Z

.field private mMaxPageId:I

.field private mPageCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mPageCount:I

    .line 25
    iput v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    .line 33
    new-instance v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;

    invoke-direct {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    .line 36
    new-instance v0, Landroid/util/LruCache;

    const v1, 0x16e360

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    .line 37
    return-void
.end method

.method static synthetic access$102(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mIsAsyncCaching:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mAsyncCachingPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataCacheLoop(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->syncLoadPageCache(I)V

    return-void
.end method

.method private cachedPageDataAsyncly(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 110
    iput p1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mAsyncCachingPosition:I

    .line 111
    iget-boolean v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mIsAsyncCaching:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;-><init>(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;)V

    invoke-virtual {v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession$1;->start()V

    goto :goto_0
.end method

.method private loadPageDataCacheLoop(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataToCache(I)V

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 152
    sub-int v1, p1, v0

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataToCache(I)V

    .line 153
    add-int v1, p1, v0

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataToCache(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private loadPageDataToCache(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 131
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->getPageCount()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 133
    .local v0, channels:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-nez v0, :cond_1

    .line 135
    iget v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryMaxPageId()I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    iget v2, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    sub-int/2addr v2, p1

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryPageByPageId(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPageData index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v0           #channels:[Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    return-void
.end method

.method private declared-synchronized syncLoadPageCache(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryMaxPageId()I

    move-result v1

    iput v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    iget v2, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    sub-int/2addr v2, p1

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryPageByPageId(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 103
    .local v0, channels:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncLoadPageCache index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    .line 98
    .end local v0           #channels:[Lcom/baidu/bulletin/entity/ChannelItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    invoke-interface {v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->close()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getChannelDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPageCount()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 40
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPageCount >>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    if-nez v1, :cond_0

    .line 43
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session is closed for read, error"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    monitor-exit p0

    return v0

    .line 47
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mPageCount:I

    if-ne v1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    invoke-interface {v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryPageCount()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mPageCount:I

    .line 49
    iget v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mPageCount:I

    goto :goto_0

    .line 52
    :cond_1
    iget v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mPageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPageData >>>"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-gez p1, :cond_0

    .line 63
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error position to read"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v1

    .line 67
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    if-nez v2, :cond_2

    .line 68
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session is closed for read, error"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 72
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 73
    .local v0, channels:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-nez v0, :cond_3

    .line 74
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataToCache(I)V

    .line 79
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->cachedPageDataAsyncly(I)V

    .line 81
    iget-object v1, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/baidu/bulletin/entity/ChannelItem;

    goto :goto_0

    .line 76
    :cond_3
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPageData index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 12
    .parameter "item"

    .prologue
    .line 171
    :try_start_0
    iget-object v8, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 172
    .local v1, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[Lcom/baidu/bulletin/entity/ChannelItem;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 173
    .local v6, key:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-virtual {v8, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/entity/ChannelItem;

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 174
    .local v2, cacheItem:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-virtual {v2}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 175
    invoke-virtual {v2, p1}, Lcom/baidu/bulletin/entity/ChannelItem;->evaluate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 176
    sget-object v8, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->ChannelItemChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v8, v2}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->nofityChange(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v2           #cacheItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v5           #i$:I
    .end local v6           #key:Ljava/lang/Integer;
    .end local v7           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 173
    .restart local v0       #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .restart local v1       #cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .restart local v2       #cacheItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .restart local v5       #i$:I
    .restart local v6       #key:Ljava/lang/Integer;
    .restart local v7       #len$:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[Lcom/baidu/bulletin/entity/ChannelItem;>;"
    .end local v2           #cacheItem:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v5           #i$:I
    .end local v6           #key:Ljava/lang/Integer;
    .end local v7           #len$:I
    :catch_0
    move-exception v3

    .line 182
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method declared-synchronized resetPageDataCache()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session is closed for read, error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    invoke-interface {v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryPageCount()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mPageCount:I

    .line 91
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mChannelDao:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    invoke-interface {v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryMaxPageId()I

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mMaxPageId:I

    .line 93
    iget-object v0, p0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->mDataCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->loadPageDataCacheLoop(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
