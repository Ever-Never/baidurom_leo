.class public Lcom/baidu/launcher/thememanager/util/ImageFetcher;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;,
        Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;,
        Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;,
        Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;,
        Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;,
        Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageFetcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

.field private mImageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mExitTasksEarly:Z

    .line 43
    iput-boolean v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWork:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mResources:Landroid/content/res/Resources;

    .line 67
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    .line 69
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Lcom/baidu/launcher/thememanager/util/ImageCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapLocalTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialLocalWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "path"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 286
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapLocalTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;

    move-result-object v0

    .line 288
    .local v0, bitmaplocalTask:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    if-eqz v0, :cond_1

    .line 289
    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->localPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->access$100(Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, taskpath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 291
    :cond_0
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->cancel(Z)Z

    .line 297
    .end local v1           #taskpath:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 294
    .restart local v1       #taskpath:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "url"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    move-result-object v0

    .line 267
    .local v0, bitmapWorkerTask:Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    if-eqz v0, :cond_1

    .line 268
    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->access$000(Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, taskUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 270
    :cond_0
    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->cancel(Z)Z

    .line 276
    .end local v1           #taskUrl:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 273
    .restart local v1       #taskUrl:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    .line 252
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    move-result-object v0

    .line 253
    .local v0, bitmapWorkerTask:Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->cancel(Z)Z

    .line 256
    :cond_0
    return-void
.end method

.method private static getBitmapLocalTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 424
    if-eqz p0, :cond_0

    .line 425
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 426
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 427
    check-cast v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;

    .line 428
    .local v0, asyncDrawable:Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;->getBitmapWorkerTask()Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;

    move-result-object v2

    .line 431
    .end local v0           #asyncDrawable:Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 318
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 319
    check-cast v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;

    .line 320
    .local v0, asyncDrawable:Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;->getBitmapWorkerTask()Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    move-result-object v2

    .line 323
    .end local v0           #asyncDrawable:Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 583
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 584
    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->clearCache()V

    .line 567
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 591
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 592
    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->close()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    .line 580
    :cond_0
    return-void
.end method

.method public downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 182
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 183
    .local v4, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 185
    .local v5, in2:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, imgUrl:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 187
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 189
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    if-eqz v9, :cond_0

    .line 199
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v7}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 201
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v5           #in2:Ljava/io/InputStream;
    .local v6, in2:Ljava/io/InputStream;
    :try_start_1
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    invoke-virtual {v9, v4, v6}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->resizeBitmap(Ljava/io/InputStream;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    move-object v5, v6

    .line 210
    .end local v6           #in2:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #in2:Ljava/io/InputStream;
    :cond_0
    if-eqz v8, :cond_1

    .line 211
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 214
    :cond_1
    if-eqz v4, :cond_2

    .line 215
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 217
    :cond_2
    if-eqz v5, :cond_3

    .line 218
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 224
    .end local v3           #imgUrl:Ljava/net/URL;
    :cond_3
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    if-eqz v8, :cond_4

    .line 211
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 214
    :cond_4
    if-eqz v4, :cond_5

    .line 215
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 217
    :cond_5
    if-eqz v5, :cond_3

    .line 218
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 220
    :catch_1
    move-exception v9

    goto :goto_0

    .line 210
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v8, :cond_6

    .line 211
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 214
    :cond_6
    if-eqz v4, :cond_7

    .line 215
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 217
    :cond_7
    if-eqz v5, :cond_8

    .line 218
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 221
    :cond_8
    :goto_3
    throw v9

    .line 220
    :catch_2
    move-exception v10

    goto :goto_3

    .line 210
    .end local v5           #in2:Ljava/io/InputStream;
    .restart local v3       #imgUrl:Ljava/net/URL;
    .restart local v6       #in2:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #in2:Ljava/io/InputStream;
    .restart local v5       #in2:Ljava/io/InputStream;
    goto :goto_2

    .line 207
    .end local v5           #in2:Ljava/io/InputStream;
    .restart local v6       #in2:Ljava/io/InputStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6           #in2:Ljava/io/InputStream;
    .restart local v5       #in2:Ljava/io/InputStream;
    goto :goto_1

    .line 220
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v9

    goto :goto_0
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 587
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->flush()V

    .line 573
    :cond_0
    return-void
.end method

.method public getImageCache()Lcom/baidu/launcher/thememanager/util/ImageCache;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    return-object v0
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->initDiskCache()V

    .line 561
    :cond_0
    return-void
.end method

.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadImageFromLocal(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 5
    .parameter "path"
    .parameter "imageView"
    .parameter "textView"
    .parameter "isUseMemoryCache"

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v1, 0x0

    .line 154
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-virtual {v3, p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 159
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->cancelPotentialLocalWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    new-instance v2, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 164
    .local v2, task:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;)V

    .line 165
    .local v0, asyncDrawable:Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncLocalDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadBitmapFromLocalTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadImageFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;Z)V
    .locals 5
    .parameter "url"
    .parameter "imageView"
    .parameter "listener"
    .parameter "isUseMemoryCache"

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    .line 119
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;

    invoke-virtual {v3, p1}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    if-eqz p3, :cond_0

    .line 129
    invoke-interface {p3}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;->onLoadFinish()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    new-instance v2, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;Landroid/widget/ImageView;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;Z)V

    .line 133
    .local v2, task:Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;)V

    .line 134
    .local v0, asyncDrawable:Lcom/baidu/launcher/thememanager/util/ImageFetcher$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setExitTasksEarly(Z)V
    .locals 0
    .parameter "exitTasksEarly"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mExitTasksEarly:Z

    .line 99
    return-void
.end method

.method public setImageResizer(Lcom/baidu/launcher/thememanager/util/ImageResizer;)V
    .locals 0
    .parameter "imageResizer"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    .line 78
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public setPauseWork(Z)V
    .locals 2
    .parameter "pauseWork"

    .prologue
    .line 302
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWork:Z

    .line 304
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWork:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 307
    :cond_0
    monitor-exit v1

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
