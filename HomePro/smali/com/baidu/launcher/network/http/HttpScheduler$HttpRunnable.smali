.class Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;
.super Ljava/lang/Object;
.source "HttpScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/baidu/launcher/network/http/HttpClient$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;",
        ">;",
        "Lcom/baidu/launcher/network/http/HttpClient$Observer;"
    }
.end annotation


# static fields
.field static final NOTIFY_PER_PERCENT:I = 0xa


# instance fields
.field private mHttpClient:Lcom/baidu/launcher/network/http/HttpClient;

.field private final mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

.field private mNotifyPercent:I

.field final synthetic this$0:Lcom/baidu/launcher/network/http/HttpScheduler;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/network/http/HttpScheduler;Lcom/baidu/launcher/network/http/HttpTask;)V
    .locals 0
    .parameter
    .parameter "httpTask"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->this$0:Lcom/baidu/launcher/network/http/HttpScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    .line 269
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpClient:Lcom/baidu/launcher/network/http/HttpClient;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpClient:Lcom/baidu/launcher/network/http/HttpClient;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpClient;->cancel()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    sget-object v0, Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->onFinish(Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;)V

    goto :goto_0
.end method

.method public compareTo(Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v0, v0, Lcom/baidu/launcher/network/http/HttpTask;->mPriority:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask;->mPriority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->compareTo(Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;)I

    move-result v0

    return v0
.end method

.method public getHttpTask()Lcom/baidu/launcher/network/http/HttpTask;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpTask;->getPostData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFinish(Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v0, v2, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    .line 364
    .local v0, progress:Lcom/baidu/launcher/network/http/HttpTask$Progress;
    iget v2, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    if-gez v2, :cond_0

    .line 365
    iget v2, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    iput v2, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 369
    :cond_0
    sget-object v2, Lcom/baidu/launcher/network/http/HttpScheduler$3;->$SwitchMap$com$baidu$launcher$network$http$HttpClient$Observer$Reason:[I

    invoke-virtual {p1}, Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 383
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->this$0:Lcom/baidu/launcher/network/http/HttpScheduler;

    #getter for: Lcom/baidu/launcher/network/http/HttpScheduler;->mWorkingTask:Ljava/util/List;
    invoke-static {v2}, Lcom/baidu/launcher/network/http/HttpScheduler;->access$200(Lcom/baidu/launcher/network/http/HttpScheduler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 385
    .local v1, ret:Z
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    .line 386
    return-void

    .line 371
    .end local v1           #ret:Z
    :pswitch_0
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v2, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    goto :goto_0

    .line 375
    :pswitch_1
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v2, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    goto :goto_0

    .line 379
    :pswitch_2
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v2, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReceive(II[B)V
    .locals 4
    .parameter "total"
    .parameter "newFinished"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v0, v1, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    .line 340
    .local v0, progress:Lcom/baidu/launcher/network/http/HttpTask$Progress;
    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Receiving:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 341
    iput p1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 343
    const/high16 v1, -0x8000

    if-ne p1, v1, :cond_1

    .line 345
    iput v3, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 346
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    iget-wide v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    long-to-int v1, v1

    iput v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    .line 347
    iput v3, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mNotifyPercent:I

    .line 348
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    if-lez p2, :cond_0

    .line 350
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iput-object p3, v1, Lcom/baidu/launcher/network/http/HttpTask;->mBuffer:[B

    .line 351
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iput p2, v1, Lcom/baidu/launcher/network/http/HttpTask;->mBufferLen:I

    .line 353
    iget v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    .line 355
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    goto :goto_0
.end method

.method public onSend(II)V
    .locals 4
    .parameter "total"
    .parameter "newFinished"

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v1, v2, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    .line 305
    .local v1, progress:Lcom/baidu/launcher/network/http/HttpTask$Progress;
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Sending:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v2, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 306
    iput p1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 308
    const/high16 v2, -0x8000

    if-ne p1, v2, :cond_1

    .line 309
    iput v3, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 310
    iput v3, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    .line 311
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpTask$Progress;->reset()V

    .line 312
    iput v3, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mNotifyPercent:I

    .line 313
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-lez p2, :cond_0

    .line 315
    iget v2, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    .line 317
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpTask$Progress;->percent()I

    move-result v0

    .line 319
    .local v0, percent:I
    iget v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mNotifyPercent:I

    add-int/lit8 v2, v2, 0xa

    if-ge v2, v0, :cond_0

    .line 320
    iput v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mNotifyPercent:I

    .line 321
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v2}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v0, v0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Start:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    .line 300
    return-void
.end method

.method public onStartReceive(I)V
    .locals 3
    .parameter "total"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v0, v1, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    .line 330
    .local v0, progress:Lcom/baidu/launcher/network/http/HttpTask$Progress;
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    iget-wide v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    long-to-int v1, v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mTotal:I

    .line 331
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    iget-wide v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Range;->begin:J

    long-to-int v1, v1

    iput v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mFinished:I

    .line 332
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mNotifyPercent:I

    .line 333
    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->StartReceive:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 334
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    .line 335
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/baidu/launcher/network/http/HttpClient;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpClient:Lcom/baidu/launcher/network/http/HttpClient;

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpClient:Lcom/baidu/launcher/network/http/HttpClient;

    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpScheduler$HttpRunnable;->mHttpTask:Lcom/baidu/launcher/network/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    invoke-virtual {v0, v1, p0}, Lcom/baidu/launcher/network/http/HttpClient;->execute(Lcom/baidu/launcher/network/http/HttpParam$Request;Lcom/baidu/launcher/network/http/HttpClient$Observer;)V

    .line 289
    return-void
.end method
