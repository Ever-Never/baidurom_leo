.class public Lcom/baidu/launcher/thememanager/util/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;
    }
.end annotation


# static fields
.field public static final DEFAULT_BITMAP_TYPE:[I = null

.field public static final DEFAULT_ICON:I = 0x0

.field public static final DEFAULT_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Bitmap Cache"

.field private static mDefaultImage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/baidu/launcher/thememanager/util/BitmapCache;


# instance fields
.field private mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->DEFAULT_BITMAP_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "cache"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 51
    new-instance v2, Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    const/high16 v3, 0x40

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;-><init>(Lcom/baidu/launcher/thememanager/util/BitmapCache;I)V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    .line 54
    :try_start_0
    const-string v2, "Bitmap Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->IsNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, fc:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xf00000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1           #fc:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-object p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDefaultImage:Ljava/util/HashMap;

    return-object p0
.end method

.method public static getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mInstance:Lcom/baidu/launcher/thememanager/util/BitmapCache;

    return-object v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1
    .parameter "aCachePath"

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/launcher/thememanager/util/BitmapCache;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/BitmapCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mInstance:Lcom/baidu/launcher/thememanager/util/BitmapCache;

    .line 43
    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;->evictAll()V

    .line 260
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->get(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "aKey"
    .parameter "aUse_memcache"
    .parameter "aUse_DiskCache"

    .prologue
    const/4 v8, 0x0

    .line 162
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    move-object v1, v8

    .line 212
    :goto_0
    return-object v1

    .line 166
    :cond_1
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 169
    :try_start_0
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    invoke-virtual {v7, p1}, Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 171
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 173
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    :try_start_2
    monitor-exit v9

    move-object v1, v7

    goto :goto_0

    .line 174
    :catch_0
    move-exception v5

    .line 175
    .local v5, oom:Ljava/lang/OutOfMemoryError;
    const-string v7, "Bitmap Cache"

    const-string v10, "Unable to get disk image. OutOfMemoryError."

    invoke-static {v7, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    monitor-exit v9

    move-object v1, v8

    goto :goto_0

    .line 181
    .end local v5           #oom:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    .line 182
    const/4 v4, 0x0

    .line 184
    .local v4, is:Ljava/io/InputStream;
    :try_start_3
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;

    move-result-object v6

    .line 185
    .local v6, snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    if-eqz v6, :cond_5

    .line 187
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    .line 188
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 189
    .local v2, bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 192
    if-eqz p2, :cond_3

    .line 193
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v7, p1, v10}, Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    :cond_3
    if-eqz v4, :cond_4

    .line 205
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 208
    :cond_4
    :goto_1
    :try_start_5
    monitor-exit v9

    goto :goto_0

    .line 211
    .end local v2           #bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 204
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v6       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_5
    if-eqz v4, :cond_6

    .line 205
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 211
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_6
    :goto_2
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v1, v8

    .line 212
    goto :goto_0

    .line 198
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 199
    .local v3, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 204
    if-eqz v4, :cond_6

    .line 205
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 207
    :catch_2
    move-exception v7

    goto :goto_2

    .line 200
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 201
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 204
    if-eqz v4, :cond_6

    .line 205
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .line 207
    :catch_4
    move-exception v7

    goto :goto_2

    .line 203
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v7

    .line 204
    if-eqz v4, :cond_7

    .line 205
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 208
    :cond_7
    :goto_3
    :try_start_d
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 207
    .restart local v2       #bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_5
    move-exception v7

    goto :goto_1

    .end local v2           #bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    :catch_6
    move-exception v7

    goto :goto_2

    .end local v6           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_7
    move-exception v8

    goto :goto_3
.end method

.method public getDefaultBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "aType"

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, defaultBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDefaultImage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 248
    :goto_0
    return-object v3

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 248
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDefaultBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "aContext"
    .parameter "aType"

    .prologue
    .line 226
    :try_start_0
    sget-object v2, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDefaultImage:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 227
    .local v0, defaultBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/BitmapCache;->DEFAULT_BITMAP_TYPE:[I

    aget v3, v3, p2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    sget-object v2, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDefaultImage:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0           #defaultBitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 236
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "aKey"
    .parameter "aBitmap"

    .prologue
    const/4 v2, 0x1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v2, v2}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 79
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 11
    .parameter "aKey"
    .parameter "aBitmap"
    .parameter "aUse_memcache"
    .parameter "aUse_DiskCache"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 97
    :try_start_0
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    if-eqz v7, :cond_5

    .line 99
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 100
    .local v2, cachekey:Ljava/lang/String;
    const/4 v5, 0x0

    .line 101
    .local v5, out:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 104
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v7, v2}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->get(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;

    move-result-object v6

    .line 105
    .local v6, snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    if-nez v6, :cond_6

    .line 107
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mDiskLruCache:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-virtual {v7, v2}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->edit(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;

    move-result-object v4

    .line 108
    .local v4, editor:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;
    if-eqz v4, :cond_3

    .line 109
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 110
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 111
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p2, v7, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 112
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 113
    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;->commit()V

    .line 114
    if-eqz p3, :cond_2

    .line 115
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/util/BitmapCache;->mBitmapCache:Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, p1, v9}, Lcom/baidu/launcher/thememanager/util/BitmapCache$BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    move-object v0, v1

    .line 128
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #editor:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 129
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_4
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 138
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #cachekey:Ljava/lang/String;
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v6           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_5
    :goto_2
    :try_start_4
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 120
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #cachekey:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/OutputStream;
    .restart local v6       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :cond_6
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v6, v7}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 122
    .end local v6           #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catch_0
    move-exception v3

    .line 123
    .local v3, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    if-eqz v5, :cond_7

    .line 129
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_7
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 134
    :catch_1
    move-exception v7

    goto :goto_2

    .line 124
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 125
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 128
    if-eqz v5, :cond_8

    .line 129
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_8
    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 134
    :catch_3
    move-exception v7

    goto :goto_2

    .line 127
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v7

    .line 128
    :goto_5
    if-eqz v5, :cond_9

    .line 129
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_9
    if-eqz v0, :cond_a

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 135
    :cond_a
    :goto_6
    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 134
    :catch_4
    move-exception v9

    goto :goto_6

    .line 127
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #editor:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;
    .restart local v6       #snapshot:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Snapshot;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 124
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 122
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 134
    .end local v4           #editor:Lcom/baidu/launcher/thememanager/util/DiskLruCache$Editor;
    :catch_7
    move-exception v7

    goto :goto_2
.end method

.method public removeLruCache(Ljava/lang/String;)V
    .locals 0
    .parameter "aKey"

    .prologue
    .line 252
    return-void
.end method
