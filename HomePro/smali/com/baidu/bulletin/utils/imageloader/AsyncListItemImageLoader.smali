.class public Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;
.super Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
.source "AsyncListItemImageLoader.java"


# instance fields
.field private lock:Ljava/lang/Object;

.field private mAllowLoad:Z

.field private mStartLoadLimit:I

.field private mStopLoadLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock:Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStartLoadLimit:I

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStopLoadLimit:I

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStartLoadLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStopLoadLimit:I

    return v0
.end method

.method private varargs loadDrawableFromSdCard(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V
    .locals 7
    .parameter "position"
    .parameter "imageInfo"
    .parameter "callback"
    .parameter "imgSize"

    .prologue
    .line 167
    const-string v0, "AsyncImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDrawableFromSdCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " image id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v6, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$2;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;ILcom/baidu/bulletin/db/entity/ImageInfo;[ILcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private varargs loadDrawableFromUrl(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V
    .locals 7
    .parameter "position"
    .parameter "imageInfo"
    .parameter "callback"
    .parameter "imgSize"

    .prologue
    .line 108
    const-string v0, "AsyncImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDrawableFromUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " image id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mRunningList:Ljava/util/List;

    iget-wide v1, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v6, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader$1;-><init>(Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;ILcom/baidu/bulletin/db/entity/ImageInfo;[ILcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
    .locals 3
    .parameter "position"
    .parameter "imageInfo"
    .parameter "imageCallback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 86
    invoke-interface {p3, v2, p2}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->getFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    new-array v0, v1, [I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadDrawableFromSdCard(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 95
    new-array v0, v1, [I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadDrawableFromUrl(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    goto :goto_0

    .line 98
    :cond_3
    if-eqz p3, :cond_0

    .line 99
    invoke-interface {p3, v2, p2}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_0
.end method

.method public loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V
    .locals 5
    .parameter "position"
    .parameter "imageInfo"
    .parameter "imageCallback"
    .parameter "imgWidth"
    .parameter "imgHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 62
    invoke-interface {p3, v4, p2}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->getFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    new-array v0, v3, [I

    aput p4, v0, v1

    aput p5, v0, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadDrawableFromSdCard(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    new-array v0, v3, [I

    aput p4, v0, v1

    aput p5, v0, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadDrawableFromUrl(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;[I)V

    goto :goto_0

    .line 74
    :cond_3
    if-eqz p3, :cond_0

    .line 75
    invoke-interface {p3, v4, p2}, Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    goto :goto_0
.end method

.method public lock()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "AsyncImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    .line 42
    return-void
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    .line 34
    return-void
.end method

.method public setLoadLimit(II)V
    .locals 0
    .parameter "startLoadLimit"
    .parameter "stopLoadLimit"

    .prologue
    .line 22
    if-le p1, p2, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iput p1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStartLoadLimit:I

    .line 26
    iput p2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mStopLoadLimit:I

    goto :goto_0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    .line 48
    const-string v0, "AsyncImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllowload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->mAllowLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
