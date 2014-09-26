.class public Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
.super Ljava/lang/Object;
.source "CacheImageLoader.java"

# interfaces
.implements Lcom/baidu/launcher/app/Launcher$SysTrimMemoryListener;


# static fields
.field private static final MAX_CATCHE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CacheImageLoader"

.field private static imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mLruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleton:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mContext:Landroid/content/Context;

    .line 31
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    const/16 v1, 0x20

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getAvaibleMemCacheSize(II)I

    move-result v0

    .line 33
    .local v0, cacheSize:I
    new-instance v1, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader$1;

    invoke-direct {v1, p0, v0}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader$1;-><init>(Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;I)V

    sput-object v1, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    .line 56
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getAvaibleMemCacheSize(II)I
    .locals 4
    .parameter "maxSize"
    .parameter "step"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 60
    .local v1, memClass:I
    if-le v1, p1, :cond_0

    move v1, p1

    .line 61
    :cond_0
    const/high16 v2, 0x10

    mul-int/2addr v2, v1

    div-int v0, v2, p2

    .line 62
    .local v0, cacheSize:I
    return v0
.end method

.method public static getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mSingleton:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mSingleton:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 70
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mSingleton:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    return-object v0
.end method


# virtual methods
.method public loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "imageInfo"

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_0

    move-object v0, v2

    .line 112
    :goto_0
    return-object v0

    .line 79
    :cond_0
    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 82
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    monitor-enter v3

    .line 83
    :try_start_0
    sget-object v4, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    iget-object v5, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 85
    const-string v2, "CacheImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get from the memory cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v3

    goto :goto_0

    .line 88
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 92
    .local v1, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 94
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 96
    sget-object v2, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    iget-object v3, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v2, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "CacheImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get from the soft cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    const-string v3, "CacheImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "soft cache bitmap is recyle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->imageSoftCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_3
    :goto_1
    move-object v0, v2

    .line 112
    goto/16 :goto_0

    .line 107
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_4
    const-string v3, "CacheImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache softReference is null :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSysTrimMemory(I)I
    .locals 4
    .parameter "level"

    .prologue
    .line 129
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    .line 130
    .local v1, oldSize:I
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 131
    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    .line 132
    .local v0, newSize:I
    sub-int v2, v1, v0

    .line 133
    .local v2, recyleSize:I
    if-gez v2, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 136
    :cond_0
    return v2
.end method

.method public putBitmapToCache(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 4
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    sget-object v1, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    iget-object v2, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "CacheImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put image to the mem cache, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3}, Landroid/support/v4/util/LruCache;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " image url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v1

    .line 125
    :cond_0
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
