.class Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;

.field private final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor$1;->this$1:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor$1;->this$1:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;->scheduleNext()V

    .line 262
    return-void

    .line 259
    :catchall_0
    move-exception v0

    .line 260
    iget-object v1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor$1;->this$1:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;->scheduleNext()V

    .line 261
    throw v0
.end method
