.class public Lcom/inveno/flyshare/utils/BitmapTools;
.super Ljava/lang/Object;
.source "BitmapTools.java"


# static fields
.field private static final MAX_DECODE_PICTURE_SIZE:I = 0x2a3000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 5
    .parameter "bmp"
    .parameter "needRecycle"

    .prologue
    .line 692
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 693
    .local v1, output:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 694
    if-eqz p1, :cond_0

    .line 695
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 698
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 700
    .local v2, result:[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return-object v2

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 475
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 476
    .local v0, height:I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 477
    .local v4, width:I
    const/4 v1, 0x1

    .line 479
    .local v1, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 481
    :cond_0
    if-le v4, v0, :cond_2

    .line 482
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 487
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 489
    .local v2, totalPixels:F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 491
    .local v3, totalReqPixelsCap:F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-gtz v5, :cond_3

    .line 495
    .end local v2           #totalPixels:F
    .end local v3           #totalReqPixelsCap:F
    :cond_1
    return v1

    .line 484
    :cond_2
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 492
    .restart local v2       #totalPixels:F
    .restart local v3       #totalReqPixelsCap:F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static compress(Ljava/io/ByteArrayOutputStream;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "out"
    .parameter "length"

    .prologue
    .line 499
    const/4 v2, 0x0

    .line 501
    .local v2, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    move-object v4, v2

    .line 518
    :goto_1
    return-object v4

    .line 502
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "\u56fe\u7247\u6d41\u592a\u5927\uff0c\u89e3\u6790\u62a5\u9519\uff0c\u538b\u7f29\u540e\u91cd\u65b0\u89e3\u6790"

    invoke-static {v4}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 506
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 507
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x3

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 508
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 510
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 512
    .local v1, e1:Ljava/lang/OutOfMemoryError;
    const-string v4, "\u56fe\u7247\u6d41\u592a\u5927\uff0copts.inSampleSize = 3\u89e3\u6790\u62a5\u9519\uff0c"

    invoke-static {v4}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 513
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static compress(Ljava/io/InputStream;FF)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "in"
    .parameter "ww"
    .parameter "hh"

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x64

    .line 530
    const/4 v2, 0x0

    .line 532
    .local v2, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 540
    :goto_0
    if-nez v2, :cond_0

    .line 556
    :goto_1
    return-object v5

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "\u56fe\u7247\u6d41\u592a\u5927\uff0c\u89e3\u6790\u62a5\u9519\uff0c\u538b\u7f29\u540e\u91cd\u65b0\u89e3\u6790"

    invoke-static {v6}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 535
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 536
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x3

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 537
    invoke-static {p0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 543
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 544
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 546
    const/16 v3, 0x63

    .line 547
    .local v3, options:I
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    div-int/lit16 v5, v5, 0x400

    if-gt v5, v7, :cond_2

    .line 556
    invoke-static {v2, p1, p2}, Lcom/inveno/flyshare/utils/BitmapTools;->getCroppedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 548
    :cond_2
    const-string v5, "\u56fe\u7247\u8fd8\u662f\u5927\u4e8e80\uff0c\u7ee7\u7eed\u538b\u7f29"

    invoke-static {v5}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 550
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 551
    const/16 v5, 0xa

    if-le v3, v5, :cond_1

    .line 552
    add-int/lit8 v3, v3, -0xa

    goto :goto_2
.end method

.method public static convertGreyImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "img"

    .prologue
    .line 811
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 812
    .local v3, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 814
    .local v7, height:I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 816
    .local v1, pixels:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 817
    const/high16 v8, -0x100

    .line 818
    .local v8, alpha:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-lt v12, v7, :cond_0

    .line 831
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    .local v0, result:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 833
    return-object v0

    .line 819
    .end local v0           #result:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-lt v13, v3, :cond_1

    .line 818
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 820
    :cond_1
    mul-int v2, v3, v12

    add-int/2addr v2, v13

    aget v11, v1, v2

    .line 822
    .local v11, grey:I
    const/high16 v2, 0xff

    and-int/2addr v2, v11

    shr-int/lit8 v14, v2, 0x10

    .line 823
    .local v14, red:I
    const v2, 0xff00

    and-int/2addr v2, v11

    shr-int/lit8 v10, v2, 0x8

    .line 824
    .local v10, green:I
    and-int/lit16 v9, v11, 0xff

    .line 826
    .local v9, blue:I
    int-to-float v2, v14

    float-to-double v4, v2

    const-wide v15, 0x3fd3333333333333L

    mul-double/2addr v4, v15

    int-to-float v2, v10

    float-to-double v15, v2

    const-wide v17, 0x3fe2e147ae147ae1L

    mul-double v15, v15, v17

    add-double/2addr v4, v15

    int-to-float v2, v9

    float-to-double v15, v2

    const-wide v17, 0x3fbc28f5c28f5c29L

    mul-double v15, v15, v17

    add-double/2addr v4, v15

    double-to-int v11, v4

    .line 827
    shl-int/lit8 v2, v11, 0x10

    or-int/2addr v2, v8

    shl-int/lit8 v4, v11, 0x8

    or-int/2addr v2, v4

    or-int/2addr v11, v2

    .line 828
    mul-int v2, v3, v12

    add-int/2addr v2, v13

    aput v11, v1, v2

    .line 819
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method public static decodeByteArray([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 647
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 648
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 649
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 651
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 654
    :goto_0
    return-object v2

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fileDescriptor"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 419
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 420
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 421
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 423
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 427
    :goto_0
    return-object v2

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromByteArray([BLcom/inveno/flyshare/lru/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "maxSize"
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 393
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 394
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 395
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 396
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 397
    array-length v2, p0

    invoke-static {p0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 399
    invoke-virtual {p1}, Lcom/inveno/flyshare/lru/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/inveno/flyshare/lru/BitmapSize;->getHeight()I

    move-result v3

    .line 398
    invoke-static {v1, v2, v3}, Lcom/inveno/flyshare/utils/BitmapTools;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 400
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 401
    if-eqz p2, :cond_0

    .line 402
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 405
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 408
    :goto_0
    return-object v2

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/inveno/flyshare/lru/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fileDescriptor"
    .parameter "maxSize"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 442
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 443
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 444
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 445
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 446
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 448
    invoke-virtual {p1}, Lcom/inveno/flyshare/lru/BitmapSize;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/inveno/flyshare/lru/BitmapSize;->getHeight()I

    move-result v4

    .line 447
    invoke-static {v1, v3, v4}, Lcom/inveno/flyshare/utils/BitmapTools;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 449
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 450
    if-eqz p2, :cond_0

    .line 451
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 454
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 458
    :goto_0
    return-object v2

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filename"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v1, 0x1

    .line 371
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 372
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 373
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 374
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 376
    invoke-static {v0, p1, p2}, Lcom/inveno/flyshare/utils/BitmapTools;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 380
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "resId"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v1, 0x1

    .line 347
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 348
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 349
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 350
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 352
    invoke-static {v0, p2, p3}, Lcom/inveno/flyshare/utils/BitmapTools;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 355
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 356
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static extractThumbByte([BIIZ)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "btyes"
    .parameter "height"
    .parameter "width"
    .parameter "crop"

    .prologue
    .line 713
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 716
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    :try_start_0
    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 717
    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v15, v0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 719
    .local v13, tmp:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_0

    .line 720
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 721
    const/4 v13, 0x0

    .line 724
    :cond_0
    const-string v14, "lhc"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "extractThumbNail: round="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 725
    const-string v16, ", crop="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 724
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 727
    .local v4, beY:D
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 728
    .local v2, beX:D
    const-string v14, "lhc"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "extractThumbNail: extract beX = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", beY = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 729
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 728
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    if-eqz p3, :cond_4

    cmpl-double v14, v4, v2

    if-lez v14, :cond_3

    move-wide v14, v2

    .line 731
    :goto_0
    double-to-int v14, v14

    .line 730
    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 732
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 733
    const/4 v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 737
    :cond_1
    :goto_1
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v14, v15

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v14, v15

    const v15, 0x2a3000

    if-gt v14, v15, :cond_6

    .line 741
    move/from16 v9, p1

    .line 742
    .local v9, newHeight:I
    move/from16 v10, p2

    .line 743
    .local v10, newWidth:I
    if-eqz p3, :cond_8

    .line 744
    cmpl-double v14, v4, v2

    if-lez v14, :cond_7

    .line 745
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    .line 757
    :goto_2
    const/4 v14, 0x0

    iput-boolean v14, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 759
    const-string v14, "lhc"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap required size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 760
    const-string v16, ", orig="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 761
    const-string v16, ", sample="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 759
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v15, v0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 764
    .local v6, bm:Landroid/graphics/Bitmap;
    if-nez v6, :cond_a

    .line 765
    const-string v14, "lhc"

    const-string v15, "bitmap decode failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v6, 0x0

    .line 800
    .end local v2           #beX:D
    .end local v4           #beY:D
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v9           #newHeight:I
    .end local v10           #newWidth:I
    .end local v13           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    :goto_3
    return-object v6

    .restart local v2       #beX:D
    .restart local v4       #beY:D
    .restart local v13       #tmp:Landroid/graphics/Bitmap;
    :cond_3
    move-wide v14, v4

    .line 730
    goto/16 :goto_0

    .line 731
    :cond_4
    cmpg-double v14, v4, v2

    if-gez v14, :cond_5

    move-wide v14, v2

    goto/16 :goto_0

    :cond_5
    move-wide v14, v4

    goto/16 :goto_0

    .line 738
    :cond_6
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 795
    .end local v2           #beX:D
    .end local v4           #beY:D
    .end local v13           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 796
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v14, "exception"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "decode bitmap failed: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v11, 0x0

    .line 800
    const/4 v6, 0x0

    goto :goto_3

    .line 747
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #beX:D
    .restart local v4       #beY:D
    .restart local v9       #newHeight:I
    .restart local v10       #newWidth:I
    .restart local v13       #tmp:Landroid/graphics/Bitmap;
    :cond_7
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    :try_start_1
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    goto/16 :goto_2

    .line 750
    :cond_8
    cmpg-double v14, v4, v2

    if-gez v14, :cond_9

    .line 751
    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v9, v14

    goto/16 :goto_2

    .line 753
    :cond_9
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v10, v14

    goto/16 :goto_2

    .line 769
    .restart local v6       #bm:Landroid/graphics/Bitmap;
    :cond_a
    const-string v14, "lhc"

    .line 770
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap decoded size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 771
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 770
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 769
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v14, 0x1

    .line 772
    invoke-static {v6, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 774
    .local v12, scale:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_b

    .line 775
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 776
    move-object v6, v12

    .line 779
    :cond_b
    if-eqz p3, :cond_2

    .line 781
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v14, p2

    shr-int/lit8 v14, v14, 0x1

    .line 782
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int v15, v15, p1

    shr-int/lit8 v15, v15, 0x1

    .line 780
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v6, v14, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 783
    .local v7, cropped:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 787
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 788
    move-object v6, v7

    .line 789
    const-string v14, "lhc"

    .line 790
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "bitmap croped size="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 791
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 790
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 789
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static getBitmap([BII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bytes"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    array-length v5, p0

    invoke-static {p0, v6, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v5, p1

    .line 56
    .local v3, scaleX:I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v4, v5, p2

    .line 57
    .local v4, scaleY:I
    if-le v3, v4, :cond_0

    move v2, v3

    .line 58
    .local v2, scale:I
    :goto_0
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    array-length v5, p0

    invoke-static {p0, v6, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    return-object v0

    .end local v2           #scale:I
    :cond_0
    move v2, v4

    .line 57
    goto :goto_0
.end method

.method public static getBitmapFromStream(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "in"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x0

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v7, "chl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "width:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "chl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "width:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lcom/inveno/flyshare/utils/BitmapTools;->getByteFromByte(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 143
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    .line 144
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    array-length v7, v1

    invoke-static {v1, v10, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v5, v7, p1

    .line 148
    .local v5, scaleX:I
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v6, v7, p2

    .line 149
    .local v6, scaleY:I
    if-le v5, v6, :cond_1

    move v4, v5

    .line 151
    .local v4, scale:I
    :goto_0
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    array-length v7, v1

    invoke-static {v1, v10, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v4           #scale:I
    .end local v5           #scaleX:I
    .end local v6           #scaleY:I
    :cond_0
    :goto_1
    return-object v0

    .restart local v5       #scaleX:I
    .restart local v6       #scaleY:I
    :cond_1
    move v4, v6

    .line 149
    goto :goto_0

    .line 158
    .restart local v4       #scale:I
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static getByteFromByte(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v5, 0x0

    .line 207
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    move-object v1, v5

    .line 209
    check-cast v1, [B

    .local v1, b:[B
    move-object v4, v5

    .line 210
    check-cast v4, [B

    .line 213
    .local v4, myByte:[B
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v1, v5, [B

    .line 214
    const/4 v3, 0x0

    .line 215
    .local v3, len:I
    :goto_0
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {p0, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 222
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 223
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 230
    .end local v3           #len:I
    :goto_1
    return-object v4

    .line 217
    .restart local v3       #len:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v3           #len:I
    :catch_0
    move-exception v2

    .line 227
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    goto :goto_1
.end method

.method private static getCroppedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bmp"
    .parameter "ww"
    .parameter "hh"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 563
    float-to-int v6, p1

    .line 564
    .local v6, w:I
    float-to-int v1, p2

    .line 568
    .local v1, h:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v6, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 569
    :cond_0
    int-to-float v7, v6

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-static {p0, v7}, Lcom/inveno/flyshare/utils/BitmapTools;->splitBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 570
    invoke-static {p0, v6, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 576
    .local v5, sbmp:Landroid/graphics/Bitmap;
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 578
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 580
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 581
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 582
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 583
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 584
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 585
    const-string v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v7, v6, -0x1

    add-int/lit8 v8, v1, -0x1

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 589
    .local v4, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 591
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    .line 592
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 591
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 593
    invoke-virtual {v0, v5, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 595
    return-object v2

    .line 573
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #output:Landroid/graphics/Bitmap;
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #rect:Landroid/graphics/Rect;
    .end local v5           #sbmp:Landroid/graphics/Bitmap;
    :cond_1
    move-object v5, p0

    .restart local v5       #sbmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 281
    const-string v1, "mounted"

    .line 282
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {p0}, Lcom/inveno/flyshare/utils/BitmapTools;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 283
    .end local v0           #cachePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, cacheDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bit_big"
    .parameter "bit_small"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v5, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, bit_new:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/BitmapTools;->getWhiteLayout(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 108
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    const/16 v3, 0x1f

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    return-object v0
.end method

.method public static getPictureFromCache(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "cacheDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/webviewCacheChromium/f_000001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 268
    .local v2, inStream:Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    return-object v0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 8
    .parameter "path"

    .prologue
    .line 320
    const-wide/16 v2, 0x0

    .line 322
    .local v2, availableSize:J
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 324
    .local v6, stats:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 325
    .local v4, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 326
    .local v0, alBlock:J
    mul-long v2, v4, v0

    .line 331
    .end local v0           #alBlock:J
    .end local v4           #blockSize:J
    .end local v6           #stats:Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 328
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static getWhiteLayout(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 85
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, bitLayout:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v1, canvasLayout:Landroid/graphics/Canvas;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 89
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 90
    return-object v0
.end method

.method public static matrixBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 184
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 185
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 186
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 187
    .local v9, scaleWidth:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 188
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 190
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 189
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 191
    .local v7, newBmp:Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static readBitMap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v3, 0x1

    .line 246
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 249
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 251
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 254
    .local v0, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 72
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 73
    .local v2, len:I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v3, outStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 78
    .local v1, data:[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 79
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 80
    return-object v1

    .line 75
    .end local v1           #data:[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static screenShotThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 688
    return-void
.end method

.method private static splitBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "rate"

    .prologue
    .line 610
    const/4 v5, 0x0

    .line 611
    .local v5, x:I
    const/4 v6, 0x0

    .line 612
    .local v6, y:I
    const/4 v4, 0x0

    .line 613
    .local v4, w:I
    const/4 v2, 0x0

    .line 614
    .local v2, h:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 615
    .local v1, bw:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 616
    .local v0, bh:I
    int-to-float v7, v1

    int-to-float v8, v0

    div-float/2addr v7, v8

    cmpl-float v7, v7, p1

    if-lez v7, :cond_0

    .line 617
    int-to-float v7, v0

    mul-float/2addr v7, p1

    float-to-int v4, v7

    .line 618
    sub-int v7, v1, v4

    div-int/lit8 v5, v7, 0x2

    .line 619
    move v2, v0

    .line 627
    :goto_0
    invoke-static {p0, v5, v6, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 628
    .local v3, map:Landroid/graphics/Bitmap;
    return-object v3

    .line 620
    .end local v3           #map:Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v7, v1

    int-to-float v8, v0

    div-float/2addr v7, v8

    cmpg-float v7, v7, p1

    if-gez v7, :cond_1

    .line 621
    int-to-float v7, v1

    div-float/2addr v7, p1

    float-to-int v2, v7

    .line 622
    move v4, v1

    goto :goto_0

    .line 624
    :cond_1
    move v2, v0

    .line 625
    move v4, v1

    goto :goto_0
.end method

.method public static takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "activity"

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 662
    .local v6, view:Landroid/view/View;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 663
    invoke-virtual {v6}, Landroid/view/View;->buildDrawingCache()V

    .line 664
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 667
    .local v1, b1:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 668
    .local v4, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 669
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 672
    .local v5, statusBarHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 673
    .local v3, dWidth:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 674
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 675
    .local v2, dHeight:I
    const-string v7, "lhc"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u72b6\u6001\u680f\u9ad8\u5ea6\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5c4f\u5e55\u5bbd\u9ad8\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 676
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 675
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v7, 0x0

    .line 679
    sub-int v8, v2, v5

    .line 678
    invoke-static {v1, v7, v5, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 682
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/view/View;->destroyDrawingCache()V

    .line 683
    return-object v0
.end method
