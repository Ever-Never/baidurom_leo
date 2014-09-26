.class Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 701
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;

    .line 702
    .local v0, result:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;,"Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult<*>;"
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 711
    :goto_0
    return-void

    .line 705
    :pswitch_0
    iget-object v1, v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    iget-object v2, v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->access$0(Lcom/inveno/flyshare/lru/CompatibleAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 708
    :pswitch_1
    iget-object v1, v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;->mTask:Lcom/inveno/flyshare/lru/CompatibleAsyncTask;

    iget-object v2, v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
