.class public Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;
.super Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/inveno/flyshare/lru/CompatibleAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final containerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

.field private from:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

.field final synthetic this$0:Lcom/inveno/flyshare/BitmapUtils;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inveno/flyshare/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V
    .locals 2
    .parameter
    .parameter
    .parameter "url"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, this:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    .local p2, container:Landroid/view/View;,"TT;"
    .local p5, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    iput-object p1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    .line 419
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;-><init>()V

    .line 417
    sget-object v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    iput-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->from:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    .line 421
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 422
    if-nez p5, :cond_1

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->containerReference:Ljava/lang/ref/WeakReference;

    .line 427
    iput-object p5, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    .line 428
    iput-object p3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    .line 429
    iput-object p4, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    return-void
.end method

.method static synthetic access$3(Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 435
    .local p0, this:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/inveno/flyshare/BitmapUtils;->access$0(Lcom/inveno/flyshare/BitmapUtils;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 436
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->pauseTask:Z
    invoke-static {v1}, Lcom/inveno/flyshare/BitmapUtils;->access$1(Lcom/inveno/flyshare/BitmapUtils;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    const/4 v0, 0x0

    .line 447
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 449
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;
    invoke-static {v1}, Lcom/inveno/flyshare/BitmapUtils;->access$2(Lcom/inveno/flyshare/BitmapUtils;)Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 449
    invoke-virtual {v1, v2, v3}, Lcom/inveno/flyshare/lru/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    const-string v1, "bitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sd\u4e2d\u62ff\u5230\u56fe\u7247\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;
    invoke-static {v1}, Lcom/inveno/flyshare/BitmapUtils;->access$2(Lcom/inveno/flyshare/BitmapUtils;)Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    .line 459
    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    iget-object v4, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    .line 458
    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/inveno/flyshare/lru/BitmapCache;->downloadBitmap(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    sget-object v1, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->URL:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    iput-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->from:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    .line 463
    :cond_2
    return-object v0

    .line 438
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/inveno/flyshare/BitmapUtils;->access$0(Lcom/inveno/flyshare/BitmapUtils;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 439
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 435
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContainer()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 502
    .local v1, container:Landroid/view/View;,"TT;"
    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    .line 501
    #calls: Lcom/inveno/flyshare/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;
    invoke-static {v1, v2}, Lcom/inveno/flyshare/BitmapUtils;->access$3(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    .line 504
    .local v0, bitmapWorkerTask:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    if-ne p0, v0, :cond_0

    .line 508
    .end local v1           #container:Landroid/view/View;,"TT;"
    :goto_0
    return-object v1

    .restart local v1       #container:Landroid/view/View;,"TT;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 493
    .local p0, this:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oncancle:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/inveno/flyshare/BitmapUtils;->access$0(Lcom/inveno/flyshare/BitmapUtils;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->this$0:Lcom/inveno/flyshare/BitmapUtils;

    #getter for: Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/inveno/flyshare/BitmapUtils;->access$0(Lcom/inveno/flyshare/BitmapUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 494
    monitor-exit v1

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    .line 479
    .local p0, this:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, container:Landroid/view/View;,"TT;"
    if-eqz v1, :cond_0

    .line 481
    if-eqz p1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    .line 483
    iget-object v4, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    iget-object v5, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->from:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    move-object v3, p1

    .line 482
    invoke-virtual/range {v0 .. v5}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;

    .line 486
    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->displayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v3}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 485
    invoke-virtual {v0, v1, v2, v3}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 468
    .local p0, this:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    .line 470
    .local v0, container:Landroid/view/View;,"TT;"
    if-eqz v0, :cond_0

    .line 471
    iget-object v3, p0, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    .line 472
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 471
    invoke-virtual {v3, v0, v1, v2}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 475
    .end local v0           #container:Landroid/view/View;,"TT;"
    :cond_0
    return-void
.end method
