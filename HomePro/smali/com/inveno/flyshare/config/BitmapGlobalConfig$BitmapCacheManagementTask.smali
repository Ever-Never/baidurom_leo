.class Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;
.super Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
.source "BitmapGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/config/BitmapGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCacheManagementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/flyshare/lru/CompatibleAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_CLEAR:I = 0x4

.field public static final MESSAGE_CLEAR_BY_KEY:I = 0x7

.field public static final MESSAGE_CLEAR_DISK:I = 0x6

.field public static final MESSAGE_CLEAR_DISK_BY_KEY:I = 0x9

.field public static final MESSAGE_CLEAR_MEMORY:I = 0x5

.field public static final MESSAGE_CLEAR_MEMORY_BY_KEY:I = 0x8

.field public static final MESSAGE_CLOSE:I = 0x3

.field public static final MESSAGE_FLUSH:I = 0x2

.field public static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field public static final MESSAGE_INIT_MEMORY_CACHE:I


# instance fields
.field final synthetic this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;


# direct methods
.method private constructor <init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-direct {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 273
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v2, v3, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-object p1

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->getBitmapCache()Lcom/inveno/flyshare/lru/BitmapCache;

    move-result-object v0

    .line 276
    .local v0, cache:Lcom/inveno/flyshare/lru/BitmapCache;
    if-eqz v0, :cond_0

    .line 279
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->initMemoryCache()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v1           #e:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->initDiskCache()V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->flush()V

    goto :goto_0

    .line 290
    :pswitch_3
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearMemoryCache()V

    .line 291
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->close()V

    goto :goto_0

    .line 294
    :pswitch_4
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearCache()V

    goto :goto_0

    .line 297
    :pswitch_5
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearMemoryCache()V

    goto :goto_0

    .line 300
    :pswitch_6
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/BitmapCache;->clearDiskCache()V

    goto :goto_0

    .line 303
    :pswitch_7
    array-length v2, p1

    if-ne v2, v5, :cond_0

    .line 305
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 306
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 305
    invoke-virtual {v0, v3, v2}, Lcom/inveno/flyshare/lru/BitmapCache;->clearCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    goto :goto_0

    .line 309
    :pswitch_8
    array-length v2, p1

    if-ne v2, v5, :cond_0

    .line 311
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 312
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 311
    invoke-virtual {v0, v3, v2}, Lcom/inveno/flyshare/lru/BitmapCache;->clearMemoryCache(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    goto :goto_0

    .line 315
    :pswitch_9
    array-length v2, p1

    if-ne v2, v4, :cond_0

    .line 317
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/flyshare/lru/BitmapCache;->clearDiskCache(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 330
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 331
    array-length v1, p1

    if-ge v1, v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onInitMemoryCacheFinished()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onInitDiskFinished()V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onFlushCacheFinished()V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onCloseCacheFinished()V

    goto :goto_0

    .line 348
    :pswitch_4
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onClearCacheFinished()V

    goto :goto_0

    .line 351
    :pswitch_5
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onClearMemoryCacheFinished()V

    goto :goto_0

    .line 354
    :pswitch_6
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onClearDiskCacheFinished()V

    goto :goto_0

    .line 357
    :pswitch_7
    array-length v1, p1

    if-ne v1, v4, :cond_0

    .line 359
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v2

    .line 360
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 359
    invoke-interface {v2, v3, v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onClearCacheFinished(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    goto/16 :goto_0

    .line 364
    :pswitch_8
    array-length v1, p1

    if-ne v1, v4, :cond_0

    .line 366
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v2

    .line 367
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 368
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Lcom/inveno/flyshare/config/BitmapDisplayConfig;

    .line 366
    invoke-interface {v2, v3, v1}, Lcom/inveno/flyshare/BitmapCacheListener;->onClearMemoryCacheFinished(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;)V

    goto/16 :goto_0

    .line 371
    :pswitch_9
    array-length v1, p1

    if-ne v1, v3, :cond_0

    .line 373
    iget-object v1, p0, Lcom/inveno/flyshare/config/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/inveno/flyshare/config/BitmapGlobalConfig;

    #getter for: Lcom/inveno/flyshare/config/BitmapGlobalConfig;->bitmapCacheListener:Lcom/inveno/flyshare/BitmapCacheListener;
    invoke-static {v1}, Lcom/inveno/flyshare/config/BitmapGlobalConfig;->access$0(Lcom/inveno/flyshare/config/BitmapGlobalConfig;)Lcom/inveno/flyshare/BitmapCacheListener;

    move-result-object v1

    .line 374
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-interface {v1, v2}, Lcom/inveno/flyshare/BitmapCacheListener;->onClearDiskCacheFinished(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
