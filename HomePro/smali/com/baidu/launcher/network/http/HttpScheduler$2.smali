.class Lcom/baidu/launcher/network/http/HttpScheduler$2;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "HttpScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/network/http/HttpScheduler;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/network/http/HttpScheduler;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter "x5"

    .prologue
    .line 100
    .local p7, x4:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$2;->this$0:Lcom/baidu/launcher/network/http/HttpScheduler;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "r"
    .parameter "t"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$2;->this$0:Lcom/baidu/launcher/network/http/HttpScheduler;

    #getter for: Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/launcher/network/http/HttpScheduler;->access$200(Lcom/baidu/launcher/network/http/HttpScheduler;)Ljava/util/List;

    move-result-object v0

    #calls: Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-static {p1}, Lcom/baidu/launcher/network/http/HttpScheduler;->access$100(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "t"
    .parameter "r"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$2;->this$0:Lcom/baidu/launcher/network/http/HttpScheduler;

    #getter for: Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/launcher/network/http/HttpScheduler;->access$200(Lcom/baidu/launcher/network/http/HttpScheduler;)Ljava/util/List;

    move-result-object v0

    #calls: Lcom/baidu/launcher/network/http/HttpScheduler;->getHttpRunnable(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
    invoke-static {p2}, Lcom/baidu/launcher/network/http/HttpScheduler;->access$100(Ljava/lang/Runnable;)Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .parameter "runnable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;

    invoke-direct {v0, p1, p2}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method
