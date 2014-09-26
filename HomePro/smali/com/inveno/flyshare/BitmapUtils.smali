.class public Lcom/inveno/flyshare/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

.field private globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

.field private pauseTask:Z

.field private final pauseTaskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inveno/flyshare/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "diskCachePath"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTask:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/inveno/flyshare/BitmapUtils;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-direct {v0, p1, p2}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    .line 50
    new-instance v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;-><init>()V

    iput-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .parameter "context"
    .parameter "diskCachePath"
    .parameter "memoryCachePercent"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .locals 1
    .parameter "context"
    .parameter "diskCachePath"
    .parameter "memoryCachePercent"
    .parameter "diskCacheSize"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 76
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDiskCacheSize(I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "diskCachePath"
    .parameter "memoryCacheSize"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "diskCachePath"
    .parameter "memoryCacheSize"
    .parameter "diskCacheSize"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 63
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDiskCacheSize(I)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flyshare/BitmapUtils;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/inveno/flyshare/BitmapUtils;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTask:Z

    return v0
.end method

.method static synthetic access$2(Lcom/inveno/flyshare/BitmapUtils;)Lcom/inveno/flyshare/config/BitmapGlobalConfig;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    return-object v0
.end method

.method static synthetic access$3(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p0, p1}, Lcom/inveno/flyshare/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    return-object v0
.end method

.method private static bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Z
    .locals 4
    .parameter
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, container:Landroid/view/View;,"TT;"
    .local p2, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    const/4 v2, 0x1

    .line 379
    .line 378
    invoke-static {p0, p2}, Lcom/inveno/flyshare/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    .line 381
    .local v0, oldLoadTask:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    if-eqz v0, :cond_1

    .line 382
    #getter for: Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->access$3(Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, oldUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    :cond_0
    invoke-virtual {v0, v2}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->cancel(Z)Z

    .line 389
    .end local v1           #oldUrl:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method public static cancelWork(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, container:Landroid/view/View;,"TT;"
    .local p1, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    const/4 v1, 0x1

    .line 403
    .line 402
    invoke-static {p0, p1}, Lcom/inveno/flyshare/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    .line 404
    .local v0, bitmapWorkerTask:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->cancel(Z)Z

    .line 407
    :cond_0
    return v1
.end method

.method private static getBitmapTaskFromContainer(Landroid/view/View;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;)",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, container:Landroid/view/View;,"TT;"
    .local p1, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1, p0}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 359
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/inveno/flyshare/lru/AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 360
    check-cast v0, Lcom/inveno/flyshare/lru/AsyncDrawable;

    .line 361
    .local v0, asyncDrawable:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/AsyncDrawable;->getBitmapWorkerTask()Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    move-result-object v2

    .line 364
    .end local v0           #asyncDrawable:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->clearCache()V

    .line 288
    return-void
.end method

.method public clearCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 1
    .parameter "url"
    .parameter "config"

    .prologue
    .line 300
    if-nez p2, :cond_0

    .line 301
    iget-object p2, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->clearCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 304
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->clearDiskCache()V

    .line 297
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->clearDiskCache(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 291
    const-string v0, "clear memory"

    invoke-static {v0}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->clearMemoryCache()V

    .line 293
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 1
    .parameter "url"
    .parameter "config"

    .prologue
    .line 307
    if-nez p2, :cond_0

    .line 308
    iget-object p2, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->clearMemoryCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 311
    return-void
.end method

.method public closeCache()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->closeCache()V

    .line 323
    return-void
.end method

.method public configBitmapCacheListener(Lcom/inveno/flyshare/BitmapCacheListener;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "listener"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setBitmapCacheListener(Lcom/inveno/flyshare/BitmapCacheListener;)V

    .line 195
    return-object p0
.end method

.method public configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "config"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 143
    return-object p0
.end method

.method public configDefaultBitmapMaxSize(II)Lcom/inveno/flyshare/BitmapUtils;
    .locals 2
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    new-instance v1, Lcom/inveno/flyshare/lru/BitmapSize;

    .line 122
    invoke-direct {v1, p1, p2}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>(II)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/inveno/flyshare/lru/BitmapSize;)V

    .line 123
    return-object p0
.end method

.method public configDefaultBitmapMaxSize(Lcom/inveno/flyshare/lru/BitmapSize;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/inveno/flyshare/lru/BitmapSize;)V

    .line 128
    return-object p0
.end method

.method public configDefaultCacheExpiry(J)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "defaultExpiry"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDefaultCacheExpiry(J)V

    .line 159
    return-object p0
.end method

.method public configDefaultConnectTimeout(I)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "connectTimeout"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDefaultConnectTimeout(I)V

    .line 164
    return-object p0
.end method

.method public configDefaultDisplayConfig(Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 0
    .parameter "displayConfig"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 149
    return-object p0
.end method

.method public configDefaultImageLoadAnimation(Landroid/view/animation/Animation;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "animation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 133
    return-object p0
.end method

.method public configDefaultLoadFailedImage(I)Lcom/inveno/flyshare/BitmapUtils;
    .locals 2
    .parameter "resId"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/Bitmap;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/drawable/Drawable;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-object p0
.end method

.method public configDefaultLoadingImage(I)Lcom/inveno/flyshare/BitmapUtils;
    .locals 2
    .parameter "resId"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/Bitmap;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/inveno/flyshare/BitmapUtils;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/drawable/Drawable;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-object p0
.end method

.method public configDefaultReadTimeout(I)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "readTimeout"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDefaultReadTimeout(I)V

    .line 169
    return-object p0
.end method

.method public configDefaultShowOriginal(Z)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "showOriginal"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setShowOriginal(Z)V

    .line 138
    return-object p0
.end method

.method public configDiskCacheEnabled(Z)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDiskCacheEnabled(Z)V

    .line 184
    return-object p0
.end method

.method public configDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "diskCacheFileNameGenerator"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V

    .line 190
    return-object p0
.end method

.method public configDownloader(Lcom/inveno/flyshare/download/Downloader;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "downloader"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setDownloader(Lcom/inveno/flyshare/download/Downloader;)V

    .line 154
    return-object p0
.end method

.method public configGlobalConfig(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapUtils;
    .locals 0
    .parameter "globalConfig"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    .line 200
    return-object p0
.end method

.method public configMemoryCacheEnabled(Z)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setMemoryCacheEnabled(Z)V

    .line 179
    return-object p0
.end method

.method public configThreadPoolSize(I)Lcom/inveno/flyshare/BitmapUtils;
    .locals 1
    .parameter "threadPoolSize"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setThreadPoolSize(I)V

    .line 174
    return-object p0
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, container:Landroid/view/View;,"TT;"
    .local p3, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    .line 217
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Z)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter
    .parameter "saveToSdcard"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, container:Landroid/view/View;,"TT;"
    .local p3, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    new-instance v0, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;-><init>()V

    .line 222
    .local v0, config:Lcom/inveno/flyshare/config/BitmapDisplayConfig;
    invoke-virtual {v0, p4}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setSaveToSdcard(Z)V

    .line 223
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    .line 224
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V
    .locals 16
    .parameter
    .parameter "url"
    .parameter "displayConfig"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, container:Landroid/view/View;,"TT;"
    .local p4, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    const-string v4, "bitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "displayConfig:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " display container\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-nez p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearAnimation()V

    .line 234
    if-nez p4, :cond_2

    .line 235
    new-instance p4, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;

    .end local p4           #callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    invoke-direct/range {p4 .. p4}, Lcom/inveno/flyshare/callback/SimpleBitmapLoadCallBack;-><init>()V

    .line 238
    .restart local p4       #callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<TT;>;"
    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/flyshare/BitmapUtils;->defaultDisplayConfig:Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    invoke-virtual {v4}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->cloneNew()Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    move-result-object p3

    .line 243
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v15

    .line 245
    .local v15, size:Lcom/inveno/flyshare/lru/BitmapSize;
    invoke-virtual {v15}, Lcom/inveno/flyshare/lru/BitmapSize;->getWidth()I

    move-result v4

    invoke-virtual {v15}, Lcom/inveno/flyshare/lru/BitmapSize;->getHeight()I

    move-result v5

    .line 244
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/inveno/flyshare/utils/BitmapCommonUtils;->optimizeMaxSizeByView(Landroid/view/View;II)Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/inveno/flyshare/lru/BitmapSize;)V

    .line 247
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 249
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    const-string v4, "\u4f20\u5165\u7684url\u4e3a\u7a7a"

    invoke-static {v4}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 251
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 256
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/inveno/flyshare/lru/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 259
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 261
    const-string v4, "bitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5185\u5b58\u4e2d\u62ff\u5230\u56fe\u7247\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    .line 264
    sget-object v9, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    .line 263
    invoke-virtual/range {v4 .. v9}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadFrom;)V

    goto/16 :goto_0

    .line 265
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/inveno/flyshare/BitmapUtils;->bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    const-string v4, "bitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u56fe\u7247\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " displayConfig Save:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->isSaveToSdcard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v8, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;-><init>(Lcom/inveno/flyshare/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    .line 270
    .local v8, loadTask:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<TT;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 271
    new-instance v14, Lcom/inveno/flyshare/lru/AsyncDrawable;

    .line 272
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 271
    invoke-direct {v14, v4, v8}, Lcom/inveno/flyshare/lru/AsyncDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;)V

    .line 273
    .local v14, asyncDrawable:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 282
    .end local v14           #asyncDrawable:Lcom/inveno/flyshare/lru/AsyncDrawable;,"Lcom/inveno/flyshare/lru/AsyncDrawable<TT;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapLoadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v5}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    goto/16 :goto_0
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "container"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    .line 207
    return-void
.end method

.method public display(Landroid/widget/ImageView;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V
    .locals 1
    .parameter "container"
    .parameter "url"
    .parameter "displayConfig"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inveno/flyshare/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)V

    .line 212
    return-void
.end method

.method public flushCache()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->flushCache()V

    .line 319
    return-void
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "url"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/lru/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "displayConfig"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/inveno/flyshare/lru/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pauseTasks()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTask:Z

    .line 344
    invoke-virtual {p0}, Lcom/inveno/flyshare/BitmapUtils;->flushCache()V

    .line 345
    return-void
.end method

.method public resumeTasks()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTask:Z

    .line 337
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 337
    monitor-exit v1

    .line 340
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlowUseImpl(Lcom/inveno/flyshare/download/FlowUsedApi;)V
    .locals 1
    .parameter "flowUsedImpl"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->globalConfig:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->setFlowUsedApi(Lcom/inveno/flyshare/download/FlowUsedApi;)V

    .line 81
    return-void
.end method

.method public stopTasks()V
    .locals 2

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTask:Z

    .line 349
    iget-object v1, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/inveno/flyshare/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 349
    monitor-exit v1

    .line 352
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
