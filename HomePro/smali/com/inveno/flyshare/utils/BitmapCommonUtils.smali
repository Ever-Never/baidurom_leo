.class public Lcom/inveno/flyshare/utils/BitmapCommonUtils;
.super Ljava/lang/Object;
.source "BitmapCommonUtils.java"


# static fields
.field private static screenSize:Lcom/inveno/flyshare/lru/BitmapSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->screenSize:Lcom/inveno/flyshare/lru/BitmapSize;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableSpace(Ljava/io/File;)J
    .locals 6
    .parameter "dir"

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, stats:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 47
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    .line 46
    mul-long/2addr v2, v4

    .line 50
    .end local v1           #stats:Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 50
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "dirName"

    .prologue
    .line 30
    const-string v1, "mounted"

    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 32
    .end local v0           #cachePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .parameter "object"
    .parameter "fieldName"

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, value:I
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 125
    :try_start_0
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 126
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    .local v1, fieldValue:I
    if-lez v1, :cond_0

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_0

    .line 129
    move v2, v1

    .line 134
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v1           #fieldValue:I
    :cond_0
    :goto_0
    return v2

    .line 131
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)Lcom/inveno/flyshare/lru/BitmapSize;
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    sget-object v1, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->screenSize:Lcom/inveno/flyshare/lru/BitmapSize;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/inveno/flyshare/lru/BitmapSize;

    invoke-direct {v1}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>()V

    sput-object v1, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->screenSize:Lcom/inveno/flyshare/lru/BitmapSize;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 66
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->screenSize:Lcom/inveno/flyshare/lru/BitmapSize;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/inveno/flyshare/lru/BitmapSize;->setWidth(I)V

    .line 67
    sget-object v1, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->screenSize:Lcom/inveno/flyshare/lru/BitmapSize;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Lcom/inveno/flyshare/lru/BitmapSize;->setHeight(I)V

    .line 69
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v1, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->screenSize:Lcom/inveno/flyshare/lru/BitmapSize;

    return-object v1
.end method

.method public static optimizeMaxSizeByView(Landroid/view/View;II)Lcom/inveno/flyshare/lru/BitmapSize;
    .locals 6
    .parameter "view"
    .parameter "maxImageWidth"
    .parameter "maxImageHeight"

    .prologue
    const/4 v5, -0x2

    .line 82
    move v3, p1

    .line 83
    .local v3, width:I
    move v0, p2

    .line 85
    .local v0, height:I
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 86
    new-instance v4, Lcom/inveno/flyshare/lru/BitmapSize;

    invoke-direct {v4, v3, v0}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>(II)V

    .line 118
    :goto_0
    return-object v4

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 91
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    .line 92
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v4, :cond_7

    .line 93
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    :cond_1
    :goto_1
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_8

    .line 99
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    :cond_2
    :goto_2
    if-gtz v3, :cond_3

    .line 107
    const-string v4, "mMaxWidth"

    invoke-static {p0, v4}, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 108
    :cond_3
    if-gtz v0, :cond_4

    .line 109
    const-string v4, "mMaxHeight"

    invoke-static {p0, v4}, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->getScreenSize(Landroid/content/Context;)Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v2

    .line 113
    .local v2, screenSize:Lcom/inveno/flyshare/lru/BitmapSize;
    if-gtz v3, :cond_5

    .line 114
    invoke-virtual {v2}, Lcom/inveno/flyshare/lru/BitmapSize;->getWidth()I

    move-result v3

    .line 115
    :cond_5
    if-gtz v0, :cond_6

    .line 116
    invoke-virtual {v2}, Lcom/inveno/flyshare/lru/BitmapSize;->getHeight()I

    move-result v0

    .line 118
    :cond_6
    new-instance v4, Lcom/inveno/flyshare/lru/BitmapSize;

    invoke-direct {v4, v3, v0}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>(II)V

    goto :goto_0

    .line 94
    .end local v2           #screenSize:Lcom/inveno/flyshare/lru/BitmapSize;
    :cond_7
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v4, v5, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_1

    .line 100
    :cond_8
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_2
.end method
