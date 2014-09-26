.class public Lcom/baidu/launcher/thememanager/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ImageLoader$FlushedInputStream;,
        Lcom/baidu/launcher/thememanager/util/ImageLoader$PutInCacheTask;,
        Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;,
        Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;,
        Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;,
        Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;
    }
.end annotation


# static fields
.field static final IMAGE_PREVIEW_HEIGHT:I = 0x258

.field static final IMAGE_PREVIEW_WIDTH:I = 0x168

.field public static final IMAGE_SMALL_PRIVIEW_HEIGHT:I = 0x190

.field public static final IMAGE_SMALL_PRIVIEW_WIDTH:I = 0xf0

.field private static final PREVIEW:Ljava/lang/String; = "preview"

.field private static final SMALL:Ljava/lang/String; = "small"

.field private static final TAG:Ljava/lang/String; = "TaskImageView"

.field private static mInstance:Lcom/baidu/launcher/thememanager/util/ImageLoader;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private final executorLocal:Ljava/util/concurrent/ExecutorService;

.field private final executorOnline:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->executorLocal:Ljava/util/concurrent/ExecutorService;

    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->executorOnline:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/util/ImageLoader;Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->loadImageFromPath(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->downloadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/util/ImageLoader;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->getSmallImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 527
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 528
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 530
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 532
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 535
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 544
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 530
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 532
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 539
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 540
    goto :goto_2

    .line 541
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 544
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 509
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 513
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 514
    const/4 v1, 0x1

    .line 515
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 516
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 522
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method private downloadBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "url"
    .parameter "TAG"

    .prologue
    const/4 v9, 0x0

    const/16 v11, 0x1388

    .line 549
    const/16 v0, 0x1000

    .line 552
    .local v0, IO_BUFFER_SIZE:I
    const-string v10, "Android"

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 553
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 554
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 555
    .local v5, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v5, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 556
    invoke-static {v5, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 557
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 560
    :try_start_0
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 561
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 562
    .local v8, statusCode:I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_1

    .line 563
    const-string v10, "ImageDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while retrieving bitmap from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 596
    instance-of v10, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v10, :cond_0

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 600
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    :cond_0
    :goto_0
    return-object v9

    .line 568
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #statusCode:I
    :cond_1
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 569
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_5

    .line 570
    const/4 v6, 0x0

    .line 572
    .local v6, inputStream:Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 573
    new-instance v10, Lcom/baidu/launcher/thememanager/util/ImageLoader$FlushedInputStream;

    invoke-direct {v10, v6}, Lcom/baidu/launcher/thememanager/util/ImageLoader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 578
    if-eqz v6, :cond_2

    .line 579
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 581
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 596
    instance-of v9, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v9, :cond_3

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    move-object v9, v10

    goto :goto_0

    .line 575
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    :catch_0
    move-exception v2

    .line 576
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 578
    if-eqz v6, :cond_4

    .line 579
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 581
    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 596
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #inputStream:Ljava/io/InputStream;
    :cond_5
    instance-of v10, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v10, :cond_0

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 578
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v6       #inputStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_6

    .line 579
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 581
    :cond_6
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 584
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    :catch_1
    move-exception v2

    .line 585
    .local v2, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 586
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O error while retrieving bitmap from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 596
    instance-of v10, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v10, :cond_0

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 588
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    :catch_2
    move-exception v2

    .line 589
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_8
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 590
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 596
    instance-of v10, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v10, :cond_0

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 591
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v2

    .line 592
    .local v2, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 593
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while retrieving bitmap from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 596
    instance-of v10, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v10, :cond_0

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 596
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    :catchall_1
    move-exception v9

    instance-of v10, v1, Landroid/net/http/AndroidHttpClient;

    if-eqz v10, :cond_7

    .line 597
    check-cast v1, Landroid/net/http/AndroidHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_7
    throw v9
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageLoader;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ImageLoader;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->mInstance:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->mInstance:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    monitor-exit v1

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageLoader;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->mInstance:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->mInstance:Lcom/baidu/launcher/thememanager/util/ImageLoader;

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSmallImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "big_bmp"
    .parameter "w"
    .parameter "h"
    .parameter "pixel"

    .prologue
    const/16 v8, 0x258

    .line 364
    const/4 v2, 0x0

    .line 367
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 370
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 372
    .local v0, b:[B
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 373
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 374
    const/4 v6, 0x1

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 376
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 378
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6, p4}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 380
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 382
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 384
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 386
    if-lt p2, v8, :cond_0

    .line 388
    const/16 v6, 0x168

    const/16 v7, 0x258

    const/4 v8, 0x1

    invoke-static {v2, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 391
    .local v3, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    const/4 v2, 0x0

    .line 393
    move-object v2, v3

    .line 395
    const-string v6, "TaskImageView"

    const-string v7, "re scale"

    invoke-static {v6, v7}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v0           #b:[B
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 397
    :catch_0
    move-exception v4

    .line 398
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    const-string v6, "TaskImageView"

    const-string v7, "Unable to decode small image. OutOfMemoryError."

    invoke-static {v6, v7}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadImageFromPath(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "path"
    .parameter "w"
    .parameter "h"
    .parameter "pixel"

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 408
    .local v5, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 409
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 410
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 411
    const-string v12, "TaskImageView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadImageFromPath: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 413
    const/4 v8, 0x0

    .line 414
    .local v8, packageName:Ljava/lang/String;
    :try_start_1
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, idx:I
    if-lez v4, :cond_0

    .line 416
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 418
    :cond_0
    if-eqz v8, :cond_6

    const-string v12, "com.baidu.launcher"

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-le v12, v13, :cond_6

    .line 419
    add-int/lit8 v12, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, preview_path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 423
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 424
    .local v11, resources:Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 426
    if-eqz v5, :cond_4

    .line 427
    const/4 v12, 0x0

    invoke-static {v5, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 429
    iget-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v12, :cond_1

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 431
    :cond_1
    const/4 v12, 0x0

    .line 494
    if-eqz v5, :cond_2

    .line 496
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 504
    .end local v4           #idx:I
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #preview_path:Ljava/lang/String;
    .end local v11           #resources:Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-object v12

    .line 497
    .restart local v4       #idx:I
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #preview_path:Ljava/lang/String;
    .restart local v11       #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 499
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 434
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v0, p5

    invoke-static {v7, v12, v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 436
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 438
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 439
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 441
    const/4 v12, 0x0

    invoke-static {v5, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 494
    .end local v4           #idx:I
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #preview_path:Ljava/lang/String;
    .end local v11           #resources:Landroid/content/res/Resources;
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 496
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v12, v1

    .line 504
    goto :goto_0

    .line 447
    .restart local v4       #idx:I
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_6
    :try_start_5
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 449
    iget-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v12, :cond_7

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    .line 451
    :cond_7
    const/4 v12, 0x0

    .line 494
    if-eqz v5, :cond_2

    .line 496
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 497
    :catch_1
    move-exception v3

    .line 499
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 454
    .end local v3           #e:Ljava/io/IOException;
    :cond_8
    :try_start_7
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v0, p5

    invoke-static {v7, v12, v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 456
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 458
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 459
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 461
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    goto :goto_1

    .line 463
    .end local v4           #idx:I
    :catch_2
    move-exception v3

    .line 464
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_8
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 491
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #packageName:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 492
    .local v6, oom:Ljava/lang/OutOfMemoryError;
    :try_start_9
    const-string v12, "TaskImageView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to decode file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". OutOfMemoryError."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 494
    if-eqz v5, :cond_5

    .line 496
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    .line 497
    :catch_4
    move-exception v3

    .line 499
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 465
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #oom:Ljava/lang/OutOfMemoryError;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #packageName:Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 466
    .local v3, e:Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_1

    .line 494
    .end local v3           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_9

    .line 496
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 500
    :cond_9
    :goto_3
    throw v12

    .line 467
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #packageName:Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 469
    .local v3, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 470
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 472
    if-nez v1, :cond_a

    .line 473
    const-string v12, "TaskImageView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "load image null from path = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3

    .line 475
    const/4 v12, 0x0

    .line 494
    if-eqz v5, :cond_2

    .line 496
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_0

    .line 497
    :catch_7
    move-exception v3

    .line 499
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 478
    :cond_a
    const/16 v12, 0x258

    move/from16 v0, p3

    if-lt v0, v12, :cond_4

    .line 480
    const/16 v12, 0x168

    const/16 v13, 0x258

    const/4 v14, 0x1

    :try_start_f
    invoke-static {v1, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 483
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 484
    const/4 v1, 0x0

    .line 485
    move-object v1, v2

    .line 487
    const-string v12, "TaskImageView"

    const-string v13, "re scale"

    invoke-static {v12, v13}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_1

    .line 497
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 499
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 497
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #packageName:Ljava/lang/String;
    :catch_9
    move-exception v3

    .line 499
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public downloadPreview(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aUrl"
    .parameter "aImageView"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->executorOnline:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadPreviewTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadSmall(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aUrl"
    .parameter "aKey"
    .parameter "aImageView"

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->executorLocal:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/baidu/launcher/thememanager/util/ImageLoader$DownloadSmallTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadLocalPreview(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aPath"
    .parameter "aImageView"

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->executorLocal:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadPreviewTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadLocalSmall(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "aPreview_Path"
    .parameter "aKey"
    .parameter "aImageView"

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageLoader;->executorLocal:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/baidu/launcher/thememanager/util/ImageLoader$LoadSmallTask;-><init>(Lcom/baidu/launcher/thememanager/util/ImageLoader;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method
