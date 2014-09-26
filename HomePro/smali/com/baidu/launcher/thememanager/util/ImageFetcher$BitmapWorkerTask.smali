.class Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isUseMemoryCache:Z

.field private loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;Landroid/widget/ImageView;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;Z)V
    .locals 1
    .parameter
    .parameter "imageView"
    .parameter "listener"
    .parameter "isUseCache"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 337
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;

    .line 338
    iput-boolean p4, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->isUseMemoryCache:Z

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 406
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 407
    .local v1, imageView:Landroid/widget/ImageView;
    #calls: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$500(Landroid/widget/ImageView;)Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;

    move-result-object v0

    .line 409
    .local v0, bitmapWorkerTask:Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 413
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "urls"

    .prologue
    const/4 v3, 0x0

    .line 346
    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->url:Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    .line 350
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$200(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 351
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-boolean v1, v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWork:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$200(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    goto :goto_0

    .line 356
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mExitTasksEarly:Z
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$300(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$400(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Lcom/baidu/launcher/thememanager/util/ImageCache;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mImageCache:Lcom/baidu/launcher/thememanager/util/ImageCache;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$400(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Lcom/baidu/launcher/thememanager/util/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->url:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->isUseMemoryCache:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/launcher/thememanager/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 370
    :cond_2
    return-object v0

    .line 356
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 396
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$200(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$200(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    #getter for: Lcom/baidu/launcher/thememanager/util/ImageFetcher;->mExitTasksEarly:Z
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->access$300(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    const/4 p1, 0x0

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 384
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;

    if-eqz v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;

    invoke-interface {v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;->onLoadFinish()V

    .line 391
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
