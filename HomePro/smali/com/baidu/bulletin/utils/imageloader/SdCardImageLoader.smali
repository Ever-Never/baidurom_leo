.class public Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;
.super Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;
.source "SdCardImageLoader.java"


# static fields
.field private static final MIN_HEIGHT:I = 0xa

.field private static final MIN_WIDTH:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;-><init>()V

    .line 16
    return-void
.end method

.method private getImageSampleSize(IIII)I
    .locals 8
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/4 v7, 0x1

    .line 77
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 78
    :cond_0
    const/4 v1, 0x1

    .local v1, sampleSize:I
    move v2, v1

    .line 95
    .end local v1           #sampleSize:I
    .local v2, sampleSize:I
    :goto_0
    return v2

    .line 81
    .end local v2           #sampleSize:I
    :cond_1
    int-to-float v4, p2

    int-to-float v5, p4

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 82
    .local v0, heightRatio:I
    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 83
    .local v3, widthRatio:I
    const-string v4, "AsyncImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "height ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width ratio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-le v0, v7, :cond_3

    if-le v3, v7, :cond_3

    .line 87
    if-le v0, v3, :cond_2

    move v1, v0

    .restart local v1       #sampleSize:I
    :goto_1
    move v2, v1

    .line 95
    .end local v1           #sampleSize:I
    .restart local v2       #sampleSize:I
    goto :goto_0

    .end local v2           #sampleSize:I
    :cond_2
    move v1, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    if-le v0, v7, :cond_4

    .line 89
    move v1, v0

    .restart local v1       #sampleSize:I
    goto :goto_1

    .line 90
    .end local v1           #sampleSize:I
    :cond_4
    if-le v3, v7, :cond_5

    .line 91
    move v1, v3

    .restart local v1       #sampleSize:I
    goto :goto_1

    .line 93
    .end local v1           #sampleSize:I
    :cond_5
    const/4 v1, 0x1

    .restart local v1       #sampleSize:I
    goto :goto_1
.end method

.method private loadDrawableFromSdCard(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "dbPath"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 56
    if-nez p1, :cond_1

    move-object v0, v2

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v3, v4, :cond_2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v3, v4, :cond_3

    :cond_2
    move-object v0, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v3, v4, p2, p3}, Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;->getImageSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 68
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    move-object v0, v2

    .line 70
    goto :goto_0
.end method


# virtual methods
.method public loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 5
    .parameter "imageInfo"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    .line 21
    const-string v1, "AsyncImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load from SDCARD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v4}, Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;->loadDrawableFromSdCard(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p2, v0, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 33
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    if-eqz p2, :cond_0

    .line 30
    const/4 v1, 0x0

    invoke-interface {p2, v1, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_0
.end method

.method public loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V
    .locals 4
    .parameter "imageInfo"
    .parameter "callback"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    .line 38
    const-string v1, "AsyncImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load from SDCARD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-direct {p0, v1, p3, p4}, Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;->loadDrawableFromSdCard(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 43
    invoke-interface {p2, v0, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 51
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    if-eqz p2, :cond_0

    .line 47
    const/4 v1, 0x0

    invoke-interface {p2, v1, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_0
.end method
