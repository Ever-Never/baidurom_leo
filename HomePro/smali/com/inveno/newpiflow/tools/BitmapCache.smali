.class public Lcom/inveno/newpiflow/tools/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/inveno/newpiflow/tools/BitmapCache;->getDefaultLruCacheSize()I

    move-result v0

    .line 18
    .local v0, maxSize:I
    new-instance v1, Lcom/inveno/newpiflow/tools/BitmapCache$1;

    invoke-direct {v1, p0, v0}, Lcom/inveno/newpiflow/tools/BitmapCache$1;-><init>(Lcom/inveno/newpiflow/tools/BitmapCache;I)V

    iput-object v1, p0, Lcom/inveno/newpiflow/tools/BitmapCache;->mCache:Landroid/util/LruCache;

    .line 25
    return-void
.end method

.method private getDefaultLruCacheSize()I
    .locals 6

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 13
    .local v1, maxMemory:I
    div-int/lit8 v0, v1, 0x8

    .line 14
    .local v0, cacheSize:I
    return v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inveno/newpiflow/tools/BitmapCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inveno/newpiflow/tools/BitmapCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
