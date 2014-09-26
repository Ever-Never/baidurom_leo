.class public Lcom/baidu/launcher/thememanager/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0xa00000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x500000

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "images"

.field private static final TAG:Ljava/lang/String; = "ImageCache"

.field private static sImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;


# instance fields
.field private mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

.field private mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;)V
    .locals 0
    .parameter "cacheParams"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->initMemoryCache(Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;)V

    .line 83
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 451
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 453
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v0           #hex:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 418
    :try_start_0
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .end local v0           #cachePath:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in Create DiskCacheDir..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getHashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 438
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 439
    .local v2, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 440
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/thememanager/util/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    .end local v2           #mDigest:Ljava/security/MessageDigest;
    .local v1, key:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 441
    .end local v1           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageCache;
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    const-class v2, Lcom/baidu/launcher/thememanager/util/ImageCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ImageCache;->sImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    const-string v1, "images"

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .local v0, cacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;
    const v1, 0x3e99999a

    invoke-virtual {v0, p0, v1}, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 60
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-direct {v1, v0}, Lcom/baidu/launcher/thememanager/util/ImageCache;-><init>(Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;)V

    sput-object v1, Lcom/baidu/launcher/thememanager/util/ImageCache;->sImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    .line 62
    .end local v0           #cacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;
    :cond_0
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ImageCache;->sImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 5
    .parameter "path"

    .prologue
    .line 490
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private declared-synchronized initMemoryCache(Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;)V
    .locals 2
    .parameter "cacheParams"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageCache$1;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget v1, v1, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/util/ImageCache$1;-><init>(Lcom/baidu/launcher/thememanager/util/ImageCache;I)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static newInstance(Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;)Lcom/baidu/launcher/thememanager/util/ImageCache;
    .locals 1
    .parameter "cacheParams"

    .prologue
    .line 67
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageCache;-><init>(Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "url"
    .parameter "bitmap"
    .parameter "isUseMemoryCache"

    .prologue
    .line 153
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 194
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_2

    .line 159
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    if-eqz v5, :cond_0

    .line 164
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getHashKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 165
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 167
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 168
    .local v4, snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    if-nez v4, :cond_4

    .line 169
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->edit(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;

    move-result-object v1

    .line 170
    .local v1, editor:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;
    if-eqz v1, :cond_3

    .line 171
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 172
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget-object v5, v5, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget v6, v6, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 173
    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;->commit()V

    .line 174
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 187
    .end local v1           #editor:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 188
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v5

    goto :goto_0

    .line 177
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 179
    .end local v4           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_1
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    if-eqz v3, :cond_0

    .line 188
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 190
    :catch_2
    move-exception v5

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    if-eqz v3, :cond_0

    .line 188
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 190
    :catch_4
    move-exception v5

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 187
    if-eqz v3, :cond_0

    .line 188
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 190
    :catch_6
    move-exception v5

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 187
    if-eqz v3, :cond_5

    .line 188
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 191
    :cond_5
    :goto_2
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 153
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 190
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    goto :goto_2
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    if-eqz v0, :cond_1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->close()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_1

    move-object v4, v0

    .line 242
    :cond_0
    :goto_0
    return-object v4

    .line 207
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v6, :cond_2

    .line 208
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 209
    .local v4, memBitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    .end local v4           #memBitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    if-eqz v6, :cond_5

    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v6, v3}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;

    move-result-object v5

    .line 221
    .local v5, snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    if-eqz v5, :cond_4

    .line 222
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_4

    .line 224
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 234
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 235
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_1
    move-object v4, v0

    .line 238
    goto :goto_0

    .line 234
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz v2, :cond_5

    .line 235
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v5           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_5
    :goto_2
    move-object v4, v0

    .line 242
    goto :goto_0

    .line 228
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 229
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    if-eqz v2, :cond_5

    .line 235
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 237
    :catch_1
    move-exception v6

    goto :goto_2

    .line 230
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 234
    if-eqz v2, :cond_5

    .line 235
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 237
    :catch_3
    move-exception v6

    goto :goto_2

    .line 233
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 234
    if-eqz v2, :cond_6

    .line 235
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 238
    :cond_6
    :goto_3
    throw v6

    .line 237
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v5           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_6
    move-exception v7

    goto :goto_3
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "url"

    .prologue
    .line 270
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    if-eqz v5, :cond_2

    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 275
    .local v4, snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    if-eqz v4, :cond_1

    .line 276
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_1

    .line 278
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 289
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 290
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 296
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_0
    :goto_0
    return-object v0

    .line 289
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v4       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_1
    if-eqz v2, :cond_2

    .line 290
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 296
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    if-eqz v2, :cond_2

    .line 290
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 292
    :catch_1
    move-exception v5

    goto :goto_1

    .line 285
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 289
    if-eqz v2, :cond_2

    .line 290
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 292
    :catch_3
    move-exception v5

    goto :goto_1

    .line 288
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 289
    if-eqz v2, :cond_3

    .line 290
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 293
    :cond_3
    :goto_2
    throw v5

    .line 292
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_4
    move-exception v5

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v4           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_6
    move-exception v6

    goto :goto_2
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 255
    .local v0, memBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 259
    .end local v0           #memBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDiskLruCache()Lcom/baidu/launcher/thememanager/util/DiskLruCache;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    return-object v0
.end method

.method public declared-synchronized initDiskCache()V
    .locals 6

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget-object v0, v2, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 124
    .local v0, diskCacheDir:Ljava/io/File;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget-boolean v2, v2, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_1
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget v4, v4, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 130
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    iget v4, v4, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .end local v0           #diskCacheDir:Ljava/io/File;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    .restart local v0       #diskCacheDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    .end local v0           #diskCacheDir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 133
    .restart local v0       #diskCacheDir:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache;->mCacheParams:Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
