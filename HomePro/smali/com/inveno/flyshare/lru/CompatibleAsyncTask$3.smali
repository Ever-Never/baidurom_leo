.class Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/flyshare/lru/CompatibleAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;


# direct methods
.method constructor <init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    .local p2, $anonymous0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;->this$0:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    .line 326
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;->this$0:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    #calls: Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->access$3(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 340
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 334
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 335
    const-string v2, "An error occured while executing doInBackground()"

    .line 336
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 334
    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 337
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 338
    .local v0, e:Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;->this$0:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    const/4 v2, 0x0

    #calls: Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->access$3(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method
