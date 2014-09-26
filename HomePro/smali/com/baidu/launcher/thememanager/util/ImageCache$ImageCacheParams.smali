.class public Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public clearDiskCacheOnStart:Z

.field public compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public compressQuality:I

.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/high16 v0, 0x50

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 357
    const/high16 v0, 0xa0

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 359
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 360
    const/16 v0, 0x46

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->compressQuality:I

    .line 361
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 362
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 363
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 364
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 367
    invoke-static {p1, p2}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter "diskCacheDir"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/high16 v0, 0x50

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 357
    const/high16 v0, 0xa0

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    .line 359
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ImageCache;->access$000()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 360
    const/16 v0, 0x46

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->compressQuality:I

    .line 361
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    .line 362
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 363
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->clearDiskCacheOnStart:Z

    .line 364
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 371
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 372
    return-void
.end method

.method private static getMemoryClass(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 399
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method


# virtual methods
.method public setMemCacheSizePercent(Landroid/content/Context;F)V
    .locals 2
    .parameter "context"
    .parameter "percent"

    .prologue
    const/high16 v1, 0x4480

    .line 390
    const v0, 0x3d4ccccd

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->getMemoryClass(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/util/ImageCache$ImageCacheParams;->memCacheSize:I

    .line 396
    return-void
.end method
