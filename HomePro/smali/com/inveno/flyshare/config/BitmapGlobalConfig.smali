.class public Lcom/inveno/flyshare/config/BitmapGlobalConfig;
.super Ljava/lang/Object;
.source "BitmapGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;
    }
.end annotation


# static fields
.field public static final MIN_DISK_CACHE_SIZE:I = 0xa00000

.field public static final MIN_MEMORY_CACHE_SIZE:I = 0x200000

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private _dirty_params_bitmapLoadExecutor:Z

.field private bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

.field private bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;

.field private bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private defaultCacheExpiry:J

.field private defaultConnectTimeout:I

.field private defaultReadTimeout:I

.field private diskCacheEnabled:Z

.field private diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

.field private diskCachePath:Ljava/lang/String;

.field private diskCacheSize:I

.field private downloader:Lcom/inveno/flyshare/download/Downloader;

.field private flowUsedApi:Lcom/inveno/flyshare/download/FlowUsedApi;

.field private mContext:Landroid/content/Context;

.field private memoryCacheEnabled:Z

.field private memoryCacheSize:I

.field private threadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$1;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$1;-><init>()V

    sput-object v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "diskCachePath"

    .prologue
    const/16 v2, 0x3a98

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v0, 0x60

    iput v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheSize:I

    .line 35
    const/high16 v0, 0x280

    iput v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheSize:I

    .line 37
    iput-boolean v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheEnabled:Z

    .line 38
    iput-boolean v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheEnabled:Z

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->threadPoolSize:I

    .line 44
    iput-boolean v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    .line 47
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultCacheExpiry:J

    .line 48
    iput v2, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultConnectTimeout:I

    .line 49
    iput v2, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultReadTimeout:I

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->initBitmapCache()V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;

    return-object v0
.end method

.method private getMemoryClass()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    .line 255
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    check-cast v0, Landroid/app/ActivityManager;

    .line 255
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 254
    return v0
.end method

.method private initBitmapCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    invoke-direct {v0, p0, v5}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    new-array v1, v4, [Ljava/lang/Object;

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 87
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    invoke-direct {v0, p0, v5}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    new-array v1, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 89
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    .line 386
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 387
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 388
    return-void
.end method

.method public clearCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 4
    .parameter "uri"
    .parameter "config"

    .prologue
    .line 401
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 402
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 401
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 403
    return-void
.end method

.method public clearDiskCache()V
    .locals 4

    .prologue
    .line 396
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 397
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 398
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 412
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 413
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 412
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 414
    return-void
.end method

.method public clearMemoryCache()V
    .locals 4

    .prologue
    .line 391
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 392
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 393
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 4
    .parameter "uri"
    .parameter "config"

    .prologue
    .line 406
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 407
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    .line 408
    aput-object p2, v1, v2

    .line 406
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 409
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 422
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 423
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 424
    return-void
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 417
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 418
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 419
    return-void
.end method

.method public getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/inveno/flyshare/lru/BitmapCache;

    invoke-direct {v0, p0}, Lcom/inveno/flyshare/lru/BitmapCache;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)V

    iput-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    return-object v0
.end method

.method public getBitmapCacheListener()Lcom/inveno/flyshare/BitmapCacheListener;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;

    return-object v0
.end method

.method public getBitmapLoadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getThreadPoolSize()I

    move-result v0

    sget-object v1, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 209
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapLoadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDefaultCacheExpiry()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultCacheExpiry:J

    return-wide v0
.end method

.method public getDefaultConnectTimeout()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultConnectTimeout:I

    return v0
.end method

.method public getDefaultReadTimeout()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultReadTimeout:I

    return v0
.end method

.method public getDiskCacheFileNameGenerator()Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    return-object v0
.end method

.method public getDiskCachePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    .line 94
    const-string v1, "xBitmapCache"

    .line 93
    invoke-static {v0, v1}, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCacheSize()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheSize:I

    return v0
.end method

.method public getDownloader()Lcom/inveno/flyshare/download/Downloader;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/inveno/flyshare/download/SimpleDownloader;

    invoke-direct {v0}, Lcom/inveno/flyshare/download/SimpleDownloader;-><init>()V

    iput-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    invoke-virtual {p0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDefaultCacheExpiry()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inveno/flyshare/download/Downloader;->setDefaultExpiry(J)V

    .line 112
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    invoke-virtual {p0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDefaultConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/download/Downloader;->setDefaultConnectTimeout(I)V

    .line 113
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    invoke-virtual {p0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getDefaultReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/download/Downloader;->setDefaultReadTimeout(I)V

    .line 114
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    return-object v0
.end method

.method public getFlowUsedApi()Lcom/inveno/flyshare/download/FlowUsedApi;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->flowUsedApi:Lcom/inveno/flyshare/download/FlowUsedApi;

    return-object v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheSize:I

    return v0
.end method

.method public getThreadPoolSize()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->threadPoolSize:I

    return v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheEnabled:Z

    return v0
.end method

.method public isMemoryCacheEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheEnabled:Z

    return v0
.end method

.method public setBitmapCacheListener(Lcom/inveno/flyshare/BitmapCacheListener;)V
    .locals 0
    .parameter "bitmapCacheListener"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;

    .line 251
    return-void
.end method

.method public setDefaultCacheExpiry(J)V
    .locals 0
    .parameter "defaultCacheExpiry"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultCacheExpiry:J

    .line 127
    return-void
.end method

.method public setDefaultConnectTimeout(I)V
    .locals 0
    .parameter "defaultConnectTimeout"

    .prologue
    .line 134
    iput p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultConnectTimeout:I

    .line 135
    return-void
.end method

.method public setDefaultReadTimeout(I)V
    .locals 0
    .parameter "defaultReadTimeout"

    .prologue
    .line 142
    iput p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->defaultReadTimeout:I

    .line 143
    return-void
.end method

.method public setDiskCacheEnabled(Z)V
    .locals 0
    .parameter "diskCacheEnabled"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheEnabled:Z

    .line 230
    return-void
.end method

.method public setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V
    .locals 1
    .parameter "diskCacheFileNameGenerator"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    .line 239
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    .line 241
    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/lru/BitmapCache;->setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 2
    .parameter "diskCacheSize"

    .prologue
    .line 188
    const/high16 v0, 0xa0

    if-lt p1, v0, :cond_0

    .line 189
    iput p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheSize:I

    .line 190
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    iget v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->diskCacheSize:I

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/lru/BitmapCache;->setDiskCacheSize(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public setDownloader(Lcom/inveno/flyshare/download/Downloader;)V
    .locals 0
    .parameter "downloader"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->downloader:Lcom/inveno/flyshare/download/Downloader;

    .line 119
    return-void
.end method

.method public setFlowUsedApi(Lcom/inveno/flyshare/download/FlowUsedApi;)V
    .locals 0
    .parameter "flowUsedApi"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->flowUsedApi:Lcom/inveno/flyshare/download/FlowUsedApi;

    .line 105
    return-void
.end method

.method public setMemCacheSizePercent(F)V
    .locals 2
    .parameter "percent"

    .prologue
    const/high16 v1, 0x4480

    .line 172
    const v0, 0x3d4ccccd

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    const-string v1, "percent must be between 0.05 and 0.8 (inclusive)"

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getMemoryClass()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, v1

    .line 177
    mul-float/2addr v0, v1

    .line 176
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheSize:I

    .line 178
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    iget v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheSize:I

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/lru/BitmapCache;->setMemoryCacheSize(I)V

    .line 181
    :cond_2
    return-void
.end method

.method public setMemoryCacheEnabled(Z)V
    .locals 0
    .parameter "memoryCacheEnabled"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheEnabled:Z

    .line 222
    return-void
.end method

.method public setMemoryCacheSize(I)V
    .locals 2
    .parameter "memoryCacheSize"

    .prologue
    .line 157
    const/high16 v0, 0x20

    if-lt p1, v0, :cond_1

    .line 158
    iput p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheSize:I

    .line 159
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCache:Lcom/inveno/flyshare/lru/BitmapCache;

    iget v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->memoryCacheSize:I

    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/lru/BitmapCache;->setMemoryCacheSize(I)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    goto :goto_0
.end method

.method public setThreadPoolSize(I)V
    .locals 1
    .parameter "threadPoolSize"

    .prologue
    .line 201
    if-lez p1, :cond_0

    iget v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->threadPoolSize:I

    if-eq p1, v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->_dirty_params_bitmapLoadExecutor:Z

    .line 203
    iput p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->threadPoolSize:I

    .line 205
    :cond_0
    return-void
.end method
