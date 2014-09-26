.class public Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;
    }
.end annotation


# static fields
.field public static final DCIM:Ljava/lang/String; = null

.field public static final DIRECTORY:Ljava/lang/String; = null

.field public static final MAX_PICTURE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Utils_widget_camera"

.field public static sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->DCIM:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera_widget/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->checkPhotoDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;JLjava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->realSaveBitmap(Landroid/graphics/Bitmap;JLjava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/graphics/Bitmap;JLjava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->saveImageData(Landroid/content/Context;Landroid/graphics/Bitmap;JLjava/io/File;)V

    return-void
.end method

.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bm"
    .parameter "orientationDegree"

    .prologue
    const/high16 v3, 0x4000

    .line 87
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 91
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 95
    :goto_0
    return-object v7

    .line 93
    :catch_0
    move-exception v0

    .line 95
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static checkPhotoDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkSdState()Z
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->checkPhotoDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 162
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 163
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 165
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 167
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 171
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 181
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 165
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

    .line 167
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

    .line 176
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 181
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 144
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 148
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 150
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 157
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method private static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, result:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 375
    .local v1, is:Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 378
    const v3, 0x3f333333

    invoke-static {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 380
    return-object v2
.end method

.method public static delete(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V
    .locals 4
    .parameter "context"
    .parameter "photo"

    .prologue
    .line 251
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->remove(Ljava/lang/Object;)Z

    .line 252
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 253
    .local v0, aug:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 388
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAllPhotoInBackGround(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 1
    .parameter "handler"
    .parameter "context"
    .parameter "hasNew"

    .prologue
    .line 281
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;-><init>(Landroid/content/Context;ZLandroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$2;->start()V

    .line 296
    return-void
.end method

.method public static declared-synchronized getAllPhotos(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "hasNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x14

    .line 299
    const-class v8, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getInstanse(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getPhotoHelperDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 300
    .local v4, photoHelperDao:Lcom/j256/ormlite/dao/Dao;,"Lcom/j256/ormlite/dao/Dao<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    .line 301
    .local v6, queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;,"Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    const-string v7, "date"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v5

    .line 303
    .local v5, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    const-string v7, "Utils_widget_camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "photos.size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 306
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    if-nez v7, :cond_1

    .line 307
    new-instance v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;-><init>()V

    sput-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    .line 311
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->size()I

    move-result v7

    if-ge v7, v11, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 312
    const-string v7, "Utils_widget_camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "photos.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 314
    .local v3, photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v7, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 311
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 308
    .end local v2           #i:I
    .end local v3           #photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :cond_1
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->size()I

    move-result v7

    if-ne v7, v11, :cond_0

    if-eqz p1, :cond_0

    .line 309
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    sget-object v9, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 299
    .end local v4           #photoHelperDao:Lcom/j256/ormlite/dao/Dao;,"Lcom/j256/ormlite/dao/Dao<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    .end local v5           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    .end local v6           #queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;,"Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 317
    .restart local v2       #i:I
    .restart local v3       #photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    .restart local v4       #photoHelperDao:Lcom/j256/ormlite/dao/Dao;,"Lcom/j256/ormlite/dao/Dao<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    .restart local v5       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    .restart local v6       #queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;,"Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    :cond_2
    const/4 v0, 0x0

    .line 319
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    const-string v7, "Utils_widget_camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmap.width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v7, "Utils_widget_camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmap.height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :goto_3
    if-nez v0, :cond_4

    .line 326
    :try_start_2
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v7, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 327
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v7, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->remove(Ljava/lang/Object;)Z

    .line 329
    :cond_3
    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_2

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 331
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v7, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->add(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)Z

    goto :goto_2

    .line 335
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :cond_5
    const-string v7, "Utils_widget_camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v2           #i:I
    :cond_6
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v7
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 422
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 423
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 424
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 409
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 410
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 412
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 413
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 414
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 418
    :goto_0
    return v1

    .line 416
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 15
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 431
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 472
    :cond_0
    return-object v6

    .line 433
    :cond_1
    const/4 v6, 0x0

    .line 434
    .local v6, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL

    .line 442
    .local v4, minDiff:D
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 443
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 445
    .local v10, targetHeight:I
    if-gtz v10, :cond_2

    .line 447
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 451
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 452
    .local v9, size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    div-double v7, v11, v13

    .line 453
    .local v7, ratio:D
    sub-double v11, v7, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_3

    .line 454
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_3

    .line 455
    move-object v6, v9

    .line 456
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_0

    .line 462
    .end local v7           #ratio:D
    .end local v9           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v6, :cond_0

    .line 463
    const-string v11, "Utils_widget_camera"

    const-string v12, "No preview size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-wide v4, 0x7fefffffffffffffL

    .line 465
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 466
    .restart local v9       #size:Landroid/hardware/Camera$Size;
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v4

    if-gez v11, :cond_5

    .line 467
    move-object v6, v9

    .line 468
    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v4, v11

    goto :goto_1
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 100
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 118
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 108
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 110
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 113
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 114
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 116
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 117
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Utils_widget_camera"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 396
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static realSaveBitmap(Landroid/graphics/Bitmap;JLjava/io/File;)V
    .locals 5
    .parameter "bitmap"
    .parameter "currTime"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 266
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 268
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 277
    :goto_2
    const-string v3, "Utils_widget_camera"

    const-string v4, "save camera widget image successful"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 275
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static saveBitmap(Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    .locals 6
    .parameter "handler"
    .parameter "context"
    .parameter "bitmap"
    .parameter "currTime"

    .prologue
    .line 186
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;

    move-wide v1, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;-><init>(JLandroid/graphics/Bitmap;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$1;->start()V

    .line 200
    return-void
.end method

.method private static saveImageData(Landroid/content/Context;Landroid/graphics/Bitmap;JLjava/io/File;)V
    .locals 7
    .parameter "context"
    .parameter "bitmap"
    .parameter "currTime"
    .parameter "f"

    .prologue
    .line 220
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, path:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 222
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "_display_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v4, "orientation"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "_size"

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    const-string v4, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v4, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    :try_start_0
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getInstanse(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/DAOHelper;->getPhotoHelperDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 234
    .local v1, photoHelperDao:Lcom/j256/ormlite/dao/Dao;,"Lcom/j256/ormlite/dao/Dao<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 235
    invoke-static {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->saveToMedia(Landroid/content/Context;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1           #photoHelperDao:Lcom/j256/ormlite/dao/Dao;,"Lcom/j256/ormlite/dao/Dao<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v2

    .line 242
    .local v2, th:Ljava/lang/Throwable;
    const-string v4, "Utils_widget_camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write MediaStore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static saveToMedia(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "context"
    .parameter "values"

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 248
    return-void
.end method

.method public static scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 400
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 401
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 403
    .local v7, resizeBmp:Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static updateExistsFiles(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 9
    .parameter "handler"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 342
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    move-result-object v5

    .line 343
    .local v5, photoDAOManager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->quaryAll()Ljava/util/List;

    move-result-object v6

    .line 344
    .local v6, photos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    const/4 v3, 0x0

    .line 345
    .local v3, lastPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 346
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lastPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 349
    .restart local v3       #lastPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v1, forDelete:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;>;"
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 351
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 352
    .local v4, p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    .line 353
    .local v0, exists:Z
    if-nez v0, :cond_1

    .line 354
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    .end local v0           #exists:Z
    .end local v4           #p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 359
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 360
    .restart local v4       #p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v8, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 363
    .end local v4           #p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :cond_3
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    if-eqz v8, :cond_4

    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->sPhotos:Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;

    invoke-virtual {v8, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v7, 0x1

    :cond_4
    invoke-static {p0, p1, v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getAllPhotoInBackGround(Landroid/os/Handler;Landroid/content/Context;Z)V

    .line 369
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    .line 366
    :cond_6
    invoke-static {p0, p1, v7}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->getAllPhotoInBackGround(Landroid/os/Handler;Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 476
    if-nez p0, :cond_0

    .line 477
    const/4 v5, 0x0

    .line 495
    :goto_0
    return-object v5

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 481
    .local v4, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 482
    .local v0, h:I
    int-to-float v5, p1

    int-to-float v6, v4

    div-float v3, v5, v6

    .line 483
    .local v3, scaleWidth:F
    int-to-float v5, p2

    int-to-float v6, v0

    div-float v2, v5, v6

    .line 484
    .local v2, scaleHeight:F
    const/4 v1, 0x0

    .line 485
    .local v1, scale:F
    if-gtz p1, :cond_1

    .line 486
    move v1, v2

    .line 495
    :goto_1
    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 487
    :cond_1
    if-gtz p2, :cond_2

    .line 488
    move v1, v3

    goto :goto_1

    .line 490
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1
.end method
