.class public Lcom/baidu/launcher/thememanager/util/ImageResizer;
.super Ljava/lang/Object;
.source "ImageResizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ImageResizer$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageResizer"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "imageSize"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->setImageSize(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->setImageSize(II)V

    .line 32
    return-void
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 152
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 153
    .local v0, height:I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 155
    .local v4, width:I
    const/4 v1, 0x1

    .line 157
    .local v1, inSampleSize:I
    if-gt v0, p3, :cond_0

    if-le v4, p2, :cond_2

    .line 158
    :cond_0
    if-le v4, v0, :cond_1

    .line 159
    int-to-float v5, v0

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 171
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 175
    .local v2, totalPixels:F
    mul-int v5, p2, p3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 177
    .local v3, totalReqPixelsCap:F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .end local v2           #totalPixels:F
    .end local v3           #totalReqPixelsCap:F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 182
    :cond_2
    const/4 v5, 0x4

    if-le v1, v5, :cond_4

    .line 183
    const/4 v1, 0x3

    .line 188
    :cond_3
    :goto_2
    return v1

    .line 184
    :cond_4
    const/4 v5, 0x2

    if-le v1, v5, :cond_3

    .line 185
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public decodeSampledBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "filename"

    .prologue
    .line 123
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 128
    iget v1, p0, Lcom/baidu/launcher/thememanager/util/ImageResizer;->mImageWidth:I

    iget v2, p0, Lcom/baidu/launcher/thememanager/util/ImageResizer;->mImageHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public decodeSampledBitmapFromInputStream(Ljava/io/InputStream;Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "in"
    .parameter "copyOfin"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 88
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    new-instance v3, Lcom/baidu/launcher/thememanager/util/ImageResizer$FlushedInputStream;

    invoke-direct {v3, p1}, Lcom/baidu/launcher/thememanager/util/ImageResizer$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p0, v2, p3, p4}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    new-instance v3, Lcom/baidu/launcher/thememanager/util/ImageResizer$FlushedInputStream;

    invoke-direct {v3, p2}, Lcom/baidu/launcher/thememanager/util/ImageResizer$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public resizeBitmap(Ljava/io/InputStream;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "in"
    .parameter "in2"

    .prologue
    .line 65
    iget v0, p0, Lcom/baidu/launcher/thememanager/util/ImageResizer;->mImageWidth:I

    iget v1, p0, Lcom/baidu/launcher/thememanager/util/ImageResizer;->mImageHeight:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->decodeSampledBitmapFromInputStream(Ljava/io/InputStream;Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 61
    invoke-virtual {p0, p1, p1}, Lcom/baidu/launcher/thememanager/util/ImageResizer;->setImageSize(II)V

    .line 62
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    iput p1, p0, Lcom/baidu/launcher/thememanager/util/ImageResizer;->mImageWidth:I

    .line 51
    iput p2, p0, Lcom/baidu/launcher/thememanager/util/ImageResizer;->mImageHeight:I

    .line 52
    return-void
.end method
