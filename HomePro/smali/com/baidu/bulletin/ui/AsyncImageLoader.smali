.class public Lcom/baidu/bulletin/ui/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mAsyncImageLoader:Lcom/baidu/bulletin/ui/AsyncImageLoader;


# instance fields
.field private mCallbackLock:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHasNewThread:Z

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mUiHandler:Landroid/os/Handler;

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mCallbackLock:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->cropBitmapToDrawable(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/AsyncImageLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static cropBitmapToDrawable(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "oldBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x28

    .line 137
    if-eqz p0, :cond_4

    .line 139
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 141
    .local v2, bmpW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 142
    .local v1, bmpH:I
    if-le v2, v4, :cond_2

    if-le v1, v4, :cond_2

    .line 144
    mul-int v4, v2, p2

    mul-int v6, v1, p1

    if-le v4, v6, :cond_1

    .line 145
    mul-int v4, v1, p1

    div-int v2, v4, p2

    .line 151
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    invoke-static {p0, v4, v6, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bmpH:I
    .end local v2           #bmpW:I
    :goto_1
    return-object v4

    .line 147
    .restart local v1       #bmpH:I
    .restart local v2       #bmpW:I
    :cond_1
    mul-int v4, v2, p2

    div-int v1, v4, p1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Ljava/lang/Exception;
    sget-object v4, Lcom/baidu/bulletin/ui/AsyncImageLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    move-object v4, v5

    .line 161
    goto :goto_1

    .line 163
    .end local v1           #bmpH:I
    .end local v2           #bmpW:I
    :cond_3
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 166
    goto :goto_1
.end method

.method private static declared-synchronized getInstance()Lcom/baidu/bulletin/ui/AsyncImageLoader;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/baidu/bulletin/ui/AsyncImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mAsyncImageLoader:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/AsyncImageLoader;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mAsyncImageLoader:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    .line 38
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mAsyncImageLoader:Lcom/baidu/bulletin/ui/AsyncImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static load(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)V
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    if-nez p0, :cond_1

    .line 44
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;->onLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->getInstance()Lcom/baidu/bulletin/ui/AsyncImageLoader;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1, v0}, Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;->onLoaded(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private loadDrawable(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->loadDrawableWithThread(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)V

    .line 71
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-interface {p2, v1}, Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;->onLoaded(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private loadDrawableWithThread(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)V
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/bulletin/ui/AsyncImageLoader$1;-><init>(Lcom/baidu/bulletin/ui/AsyncImageLoader;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public static postInvalidate()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/AsyncImageLoader;->mAsyncImageLoader:Lcom/baidu/bulletin/ui/AsyncImageLoader;

    .line 130
    return-void
.end method
