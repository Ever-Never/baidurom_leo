.class public Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
.super Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$sdCardImageCallback;,
        Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$netWorkImageCallback;,
        Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$DiscardImagePolicy;
    }
.end annotation


# static fields
.field protected static final CORE_POOL_SIZE:I = 0x8

.field protected static final KEEP_ALIVE_TIME:I = 0x5

.field protected static final MAXIMUM_POOL_SIZE:I = 0x20

.field protected static final POOL_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mRunningList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

.field protected mCardImageLoader:Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;

.field protected mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->POOL_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;-><init>()V

    .line 32
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    .line 33
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mCardImageLoader:Lcom/baidu/bulletin/utils/imageloader/SdCardImageLoader;

    .line 34
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 35
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0x8

    const/16 v2, 0x20

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->POOL_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$DiscardImagePolicy;

    invoke-direct {v7, p0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$DiscardImagePolicy;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    return-void
.end method

.method private varargs loadDrawableFromSdCard(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V
    .locals 3
    .parameter "imageInfo"
    .parameter "callback"
    .parameter "imgSize"

    .prologue
    .line 213
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$2;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;[ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private varargs loadDrawableFromUrl(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V
    .locals 3
    .parameter "imageInfo"
    .parameter "callback"
    .parameter "imgSize"

    .prologue
    .line 187
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 191
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader$1;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;[ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mNetWorkImageLoader:Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/imageloader/NetWorkImageLoader;->cancelAll()V

    .line 241
    :cond_0
    return-void
.end method

.method protected getFileExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "localPath"

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 61
    const/4 v1, 0x1

    .line 66
    :cond_0
    return v1
.end method

.method public loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 3
    .parameter "imageInfo"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 94
    invoke-interface {p2, v2, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 96
    :cond_0
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->getFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    new-array v0, v1, [I

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadDrawableFromSdCard(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 101
    new-array v0, v1, [I

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadDrawableFromUrl(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    goto :goto_0

    .line 104
    :cond_3
    if-eqz p2, :cond_1

    .line 105
    invoke-interface {p2, v2, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_0
.end method

.method public loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V
    .locals 5
    .parameter "imageInfo"
    .parameter "callback"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 116
    invoke-interface {p2, v4, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->getFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    new-array v0, v3, [I

    aput p3, v0, v1

    aput p4, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadDrawableFromSdCard(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 123
    new-array v0, v3, [I

    aput p3, v0, v1

    aput p4, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadDrawableFromUrl(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    goto :goto_0

    .line 126
    :cond_3
    if-eqz p2, :cond_1

    .line 127
    invoke-interface {p2, v4, p1}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_0
.end method

.method protected removeRunningList(Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 3
    .parameter "imageInfo"

    .prologue
    .line 74
    if-eqz p1, :cond_1

    .line 75
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "AsyncImageLoader"

    const-string v1, "something error, image Maybe not find from DB, so clear all task here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->mRunningList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
