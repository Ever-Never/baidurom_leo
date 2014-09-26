.class Lcom/baidu/launcher/utils/LogEx$LogEntryWriterThread;
.super Ljava/lang/Thread;
.source "LogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/LogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntryWriterThread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 282
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$000()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 284
    #calls: Lcom/baidu/launcher/utils/LogEx;->writeLogEntryToFileByBatch(I)V
    invoke-static {v1}, Lcom/baidu/launcher/utils/LogEx;->access$200(I)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    #calls: Lcom/baidu/launcher/utils/LogEx;->writeLogEntryToFileByBatch(I)V
    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->access$200(I)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    #calls: Lcom/baidu/launcher/utils/LogEx;->writeLogEntryToFileByBatch(I)V
    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->access$200(I)V

    .line 292
    :cond_3
    return-void
.end method
