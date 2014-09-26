.class public Lcom/inveno/flyshare/lru/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;
    }
.end annotation


# instance fields
.field private final DISK_CACHE_INDEX:I

.field private globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

.field private isDiskCacheReadied:Z

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

.field private mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/flyshare/lru/LruMemoryCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)V
    .locals 2
    .parameter "globalConfig"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->DISK_CACHE_INDEX:I

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 35
    iput-boolean v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->isDiskCacheReadied:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "globalConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    .line 48
    return-void
.end method

.method private addBitmapToMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;J)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "uri"
    .parameter "config"
    .parameter "expiryTimestamp"

    .prologue
    .line 259
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    if-eqz v1, :cond_0

    .line 261
    move-object v0, p2

    .line 263
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    invoke-virtual {v1, v0, p1}, Lcom/inveno/flyshare/lru/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private decodeBitmapMeta(Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmapMeta"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 455
    const/4 v0, 0x0

    .line 475
    :cond_0
    :goto_0
    return-object v0

    .line 456
    :cond_1
    const/4 v0, 0x0

    .line 457
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_4

    .line 458
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    :cond_2
    iget-object v1, p1, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/BitmapTools;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    goto :goto_0

    .line 463
    :cond_3
    iget-object v1, p1, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 464
    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v2

    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 462
    invoke-static {v1, v2, v3}, Lcom/inveno/flyshare/utils/BitmapTools;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/inveno/flyshare/lru/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_4
    iget-object v1, p1, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->data:[B

    if-eqz v1, :cond_0

    .line 467
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 468
    :cond_5
    iget-object v1, p1, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->data:[B

    invoke-static {v1}, Lcom/inveno/flyshare/utils/BitmapTools;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_6
    iget-object v1, p1, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->data:[B

    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v2

    .line 472
    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 470
    invoke-static {v1, v2, v3}, Lcom/inveno/flyshare/utils/BitmapTools;->decodeSampledBitmapFromByteArray([BLcom/inveno/flyshare/lru/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "bitmap"

    const-string v1, "3333333333333333333"

    invoke-static {v0, v1}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearMemoryCache()V

    .line 351
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearDiskCache()V

    .line 352
    return-void
.end method

.method public clearCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 0
    .parameter "uri"
    .parameter "config"

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/inveno/flyshare/lru/BitmapCache;->clearMemoryCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public clearDiskCache()V
    .locals 3

    .prologue
    .line 361
    iget-object v2, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :try_start_1
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->isDiskCacheReadied:Z

    .line 361
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/BitmapCache;->initDiskCache()V

    .line 373
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 395
    iget-object v2, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 398
    :try_start_1
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 404
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/LruMemoryCache;->evictAll()V

    .line 358
    :cond_0
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 4
    .parameter "uri"
    .parameter "config"

    .prologue
    .line 387
    move-object v0, p1

    .line 388
    .local v0, key:Ljava/lang/String;
    const-string v1, "bitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u79fb\u9664\u7684key\uff1a\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/inveno/flyshare/lru/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 425
    iget-object v2, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 428
    :try_start_1
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->close()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 437
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public downloadBitmap(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "uri"
    .parameter "config"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, task:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<*>;"
    .local p4, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<*>;"
    new-instance v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;-><init>(Lcom/inveno/flyshare/lru/BitmapCache;Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;)V

    .line 164
    .local v14, bitmapMeta:Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;
    const/4 v5, 0x0

    .line 165
    .local v5, outputStream:Ljava/io/OutputStream;
    const/16 v18, 0x0

    .line 166
    .local v18, snapshot:Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    const-string v3, "bitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "downloadBitmap config.isSaveToSdcard():"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isSaveToSdcard()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isSaveToSdcard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 172
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 174
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->isDiskCacheReadied:Z

    if-eqz v3, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 183
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->get(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;

    move-result-object v18

    .line 184
    if-nez v18, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->edit(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v16

    .line 187
    .local v16, editor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    if-eqz v16, :cond_2

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    .line 191
    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDownloader()Lcom/inveno/flyshare/download/Downloader;

    move-result-object v3

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getFlowUsedApi()Lcom/inveno/flyshare/download/FlowUsedApi;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 192
    invoke-virtual/range {v3 .. v8}, Lcom/inveno/flyshare/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Lcom/inveno/flyshare/download/FlowUsedApi;)J

    move-result-wide v3

    .line 190
    iput-wide v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J

    .line 195
    const-string v3, "bitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "bitmapMeta.expiryTimestamp:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-wide v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J

    const-wide/16 v10, 0x0

    cmp-long v3, v3, v10

    if-gez v3, :cond_1

    .line 197
    invoke-virtual/range {v16 .. v16}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    invoke-static {v5}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static/range {v18 .. v18}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v3, 0x0

    .line 254
    .end local v16           #editor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    :goto_1
    return-object v3

    .line 176
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v3

    goto :goto_0

    .line 200
    .restart local v16       #editor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    :cond_1
    :try_start_5
    iget-wide v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->setEntryExpiryTimestamp(J)V

    .line 201
    invoke-virtual/range {v16 .. v16}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->commit()V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->get(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;

    move-result-object v18

    .line 206
    .end local v16           #editor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    :cond_2
    if-eqz v18, :cond_3

    .line 208
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v3

    .line 207
    iput-object v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 172
    :cond_3
    :goto_2
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v17, v5

    .line 218
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .local v17, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v3, :cond_4

    .line 219
    iget-object v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    if-nez v3, :cond_7

    .line 220
    :cond_4
    const-string v3, "bitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "SD\u7f13\u5b58\u4e0d\u53ef\u7528 "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 222
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    .line 223
    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDownloader()Lcom/inveno/flyshare/download/Downloader;

    move-result-object v3

    .line 224
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/inveno/flyshare/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)J

    move-result-wide v3

    .line 222
    iput-wide v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J

    .line 225
    iget-wide v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-gez v3, :cond_5

    .line 240
    invoke-static {v5}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static/range {v18 .. v18}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 226
    const/4 v3, 0x0

    goto :goto_1

    .line 210
    :catch_1
    move-exception v15

    .line 211
    .local v15, e:Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v15           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 237
    :catch_2
    move-exception v15

    .line 238
    .restart local v15       #e:Ljava/lang/Throwable;
    :goto_4
    :try_start_b
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 240
    invoke-static {v5}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static/range {v18 .. v18}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 254
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 228
    .end local v15           #e:Ljava/lang/Throwable;
    :cond_5
    :try_start_c
    move-object v0, v5

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v3, v0

    .line 229
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 228
    iput-object v3, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->data:[B

    .line 233
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/inveno/flyshare/lru/BitmapCache;->decodeBitmapMeta(Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 236
    .local v7, bitmap:Landroid/graphics/Bitmap;
    iget-wide v10, v14, Lcom/inveno/flyshare/lru/BitmapCache$BitmapMeta;->expiryTimestamp:J

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 235
    invoke-direct/range {v6 .. v11}, Lcom/inveno/flyshare/lru/BitmapCache;->addBitmapToMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;J)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v3

    .line 240
    invoke-static {v5}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static/range {v18 .. v18}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 239
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v3

    .line 240
    :goto_6
    invoke-static {v5}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static/range {v18 .. v18}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 242
    throw v3

    .line 246
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDownloader()Lcom/inveno/flyshare/download/Downloader;

    move-result-object v8

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getFlowUsedApi()Lcom/inveno/flyshare/download/FlowUsedApi;

    move-result-object v13

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/inveno/flyshare/download/Downloader;->downloadAndCompress(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Lcom/inveno/flyshare/download/FlowUsedApi;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 246
    invoke-direct/range {v8 .. v13}, Lcom/inveno/flyshare/lru/BitmapCache;->addBitmapToMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;J)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_1

    .line 239
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v5, v17

    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    goto :goto_6

    .line 237
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v15

    move-object/from16 v5, v17

    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    :cond_7
    move-object/from16 v5, v17

    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    goto :goto_5

    :cond_8
    move-object/from16 v17, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_3
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 410
    iget-object v2, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 413
    :try_start_1
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 419
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "uri"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "uri"
    .parameter "config"

    .prologue
    const/4 v8, 0x0

    .line 305
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 341
    :goto_0
    return-object v0

    .line 307
    :cond_1
    iget-object v9, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 308
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->isDiskCacheReadied:Z

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 315
    const/4 v7, 0x0

    .line 317
    .local v7, snapshot:Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    :try_start_1
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->get(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;

    move-result-object v7

    .line 318
    if-eqz v7, :cond_6

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/inveno/flyshare/utils/BitmapTools;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    :goto_2
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->getExpiryTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 332
    invoke-direct/range {v0 .. v5}, Lcom/inveno/flyshare/lru/BitmapCache;->addBitmapToMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;J)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 338
    :try_start_2
    invoke-static {v7}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    monitor-exit v9

    goto :goto_0

    .line 307
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #snapshot:Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 310
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    goto :goto_1

    .line 326
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #snapshot:Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    :cond_4
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v7, v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 328
    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v2

    .line 329
    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 325
    invoke-static {v0, v2, v3}, Lcom/inveno/flyshare/utils/BitmapTools;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/inveno/flyshare/lru/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 324
    goto :goto_2

    .line 335
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v6

    .line 336
    .local v6, e:Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 338
    :try_start_6
    invoke-static {v7}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 339
    .end local v6           #e:Ljava/lang/Throwable;
    .end local v7           #snapshot:Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    :cond_5
    :goto_3
    monitor-exit v9

    move-object v0, v8

    .line 341
    goto :goto_0

    .line 337
    .restart local v7       #snapshot:Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    :catchall_1
    move-exception v0

    .line 338
    invoke-static {v7}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 339
    throw v0

    .line 338
    :cond_6
    invoke-static {v7}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "uri"
    .parameter "config"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/inveno/flyshare/lru/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 281
    .end local v0           #key:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 277
    :cond_0
    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initDiskCache()V
    .locals 9

    .prologue
    .line 96
    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 129
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v7, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 101
    :try_start_0
    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    invoke-virtual {v6}, Lcom/inveno/flyshare/lru/LruDiskCache;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDiskCachePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, diskCacheDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_2
    invoke-static {v2}, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 111
    .local v0, availableSpace:J
    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDiskCacheSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    int-to-long v3, v6

    .line 112
    .local v3, diskCacheSize:J
    cmp-long v6, v0, v3

    if-lez v6, :cond_4

    .line 117
    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    :try_start_1
    invoke-static {v2, v6, v8, v3, v4}, Lcom/inveno/flyshare/lru/LruDiskCache;->open(Ljava/io/File;IIJ)Lcom/inveno/flyshare/lru/LruDiskCache;

    move-result-object v6

    iput-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 119
    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    iget-object v8, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    .line 120
    invoke-virtual {v8}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDiskCacheFileNameGenerator()Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    move-result-object v8

    .line 119
    invoke-virtual {v6, v8}, Lcom/inveno/flyshare/lru/LruDiskCache;->setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .end local v0           #availableSpace:J
    .end local v2           #diskCacheDir:Ljava/io/File;
    .end local v3           #diskCacheSize:J
    :cond_3
    :goto_2
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->isDiskCacheReadied:Z

    .line 127
    iget-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0       #availableSpace:J
    .restart local v2       #diskCacheDir:Ljava/io/File;
    .restart local v3       #diskCacheSize:J
    :cond_4
    move-wide v3, v0

    .line 113
    goto :goto_1

    .line 121
    :catch_0
    move-exception v5

    .line 122
    .local v5, e:Ljava/lang/Throwable;
    const/4 v6, 0x0

    :try_start_3
    iput-object v6, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 123
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public initMemoryCache()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    if-eqz v0, :cond_1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearMemoryCache()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_1
    new-instance v0, Lcom/inveno/flyshare/lru/BitmapCache$1;

    .line 65
    iget-object v1, p0, Lcom/inveno/flyshare/lru/BitmapCache;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getMemoryCacheSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/lru/BitmapCache$1;-><init>(Lcom/inveno/flyshare/lru/BitmapCache;I)V

    .line 64
    iput-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V
    .locals 1
    .parameter "diskCacheFileNameGenerator"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 147
    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 3
    .parameter "maxSize"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mDiskLruCache:Lcom/inveno/flyshare/lru/LruDiskCache;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache;->setMaxSize(J)V

    .line 141
    :cond_0
    return-void
.end method

.method public setMemoryCacheSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/inveno/flyshare/lru/BitmapCache;->mMemoryCache:Lcom/inveno/flyshare/lru/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/lru/LruMemoryCache;->setMaxSize(I)V

    .line 135
    :cond_0
    return-void
.end method
