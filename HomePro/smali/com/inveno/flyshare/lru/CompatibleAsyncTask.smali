.class public abstract Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;,
        Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;,
        Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;,
        Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;,
        Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$inveno$flyshare$lru$CompatibleAsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$inveno$flyshare$lru$CompatibleAsyncTask$Status()[I
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->$SWITCH_TABLE$com$inveno$flyshare$lru$CompatibleAsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->values()[Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->FINISHED:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->PENDING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->RUNNING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->$SWITCH_TABLE$com$inveno$flyshare$lru$CompatibleAsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 209
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$1;

    invoke-direct {v0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$1;-><init>()V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 218
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 219
    const/16 v1, 0xa

    .line 218
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 225
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 226
    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    sget-object v6, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 225
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 234
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;

    invoke-direct {v0, v8}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;-><init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask$SerialExecutor;)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 239
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;

    invoke-direct {v0, v8}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;-><init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sHandler:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;

    .line 241
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 204
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 314
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->PENDING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    .line 247
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 315
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$2;-><init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mWorker:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable;

    .line 326
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mWorker:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$3;-><init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 342
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 664
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 694
    :goto_0
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->FINISHED:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    .line 695
    return-void

    .line 692
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sHandler:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 301
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v5, 0x1

    .line 353
    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sHandler:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;

    .line 354
    new-instance v2, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;-><init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;[Ljava/lang/Object;)V

    .line 353
    invoke-virtual {v1, v5, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 346
    .local v0, wasTaskInvoked:Z
    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "exec"

    .prologue
    .line 307
    sput-object p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 308
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 515
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 516
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/inveno/flyshare/lru/CompatibleAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
    .locals 2
    .parameter "exec"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/inveno/flyshare/lru/CompatibleAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->PENDING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 632
    invoke-static {}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->$SWITCH_TABLE$com$inveno$flyshare$lru$CompatibleAsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 645
    :cond_0
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->RUNNING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    iput-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    .line 647
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->onPreExecute()V

    .line 649
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mWorker:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 650
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 652
    return-object p0

    .line 634
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 532
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 555
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;
    .locals 1

    .prologue
    .line 365
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mStatus:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 480
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 468
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->onCancelled()V

    .line 449
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 392
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, this:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->sHandler:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 684
    new-instance v2, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;-><init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;[Ljava/lang/Object;)V

    .line 683
    invoke-virtual {v0, v1, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    :cond_0
    return-void
.end method
