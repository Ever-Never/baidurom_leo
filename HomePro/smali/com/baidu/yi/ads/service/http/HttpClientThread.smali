.class public Lcom/baidu/yi/ads/service/http/HttpClientThread;
.super Ljava/lang/Thread;
.source "HttpClientThread.java"

# interfaces
.implements Lcom/baidu/yi/ads/service/http/HttpClient$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpClient$Observer$Reason:[I = null

.field private static final NOTIFY_PER_PERCENT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuffer:Ljava/io/ByteArrayOutputStream;

.field private mHttpClient:Lcom/baidu/yi/ads/service/http/HttpClient;

.field private mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

.field private mNotifyPercent:I

.field private mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;


# direct methods
.method static synthetic $SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpClient$Observer$Reason()[I
    .locals 3

    .prologue
    .line 8
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->$SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpClient$Observer$Reason:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->values()[Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Success:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->$SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpClient$Observer$Reason:[I

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
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/baidu/yi/ads/service/http/HttpClientThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/baidu/yi/ads/service/http/HttpTask;Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;)V
    .locals 1
    .parameter "task"
    .parameter "observer"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpClient;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/http/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpClient:Lcom/baidu/yi/ads/service/http/HttpClient;

    .line 17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mBuffer:Ljava/io/ByteArrayOutputStream;

    .line 26
    iput-object p1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 27
    iput-object p2, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;

    .line 28
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpClient:Lcom/baidu/yi/ads/service/http/HttpClient;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/http/HttpClient;->cancel()V

    .line 40
    return-void
.end method

.method public getTask()Lcom/baidu/yi/ads/service/http/HttpTask;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    return-object v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v2, v2, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    iget-wide v2, v2, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mTotal:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v0, v0, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    iget-wide v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    iput-wide v1, v0, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mTotal:J

    .line 109
    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/http/HttpClientThread;->$SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpClient$Observer$Reason()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v0, v0, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Finished:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v0, v0, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Failed:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v0, v0, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Canceled:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReceive(II[B)V
    .locals 6
    .parameter "total"
    .parameter "newFinished"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v2, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Receiving:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    .line 82
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    int-to-long v2, p1

    iput-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mTotal:J

    .line 84
    const v1, -0xffff

    if-ne v1, p1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    .line 86
    iput v4, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mNotifyPercent:I

    .line 87
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p3, v4, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 90
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mBuffer:[B

    .line 92
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    iget-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    .line 94
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->percent()I

    move-result v0

    .line 96
    .local v0, percent:I
    iget v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mNotifyPercent:I

    add-int/lit8 v1, v1, 0xa

    if-ge v1, v0, :cond_0

    .line 97
    iput v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mNotifyPercent:I

    .line 98
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    goto :goto_0
.end method

.method public onSend(II)V
    .locals 6
    .parameter "total"
    .parameter "newFinished"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    sget-object v2, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Sending:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    iput-object v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    .line 61
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    int-to-long v2, p1

    iput-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mTotal:J

    .line 63
    const v1, -0xffff

    if-ne v1, p1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mNotifyPercent:I

    .line 66
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    iget-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mFinished:J

    .line 70
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->percent()I

    move-result v0

    .line 72
    .local v0, percent:I
    iget v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mNotifyPercent:I

    add-int/lit8 v1, v1, 0xa

    if-ge v1, v0, :cond_0

    .line 73
    iput v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mNotifyPercent:I

    .line 74
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 44
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 46
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpClient:Lcom/baidu/yi/ads/service/http/HttpClient;

    iget-object v2, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    iget-object v2, v2, Lcom/baidu/yi/ads/service/http/HttpTask;->mRequest:Lcom/baidu/yi/ads/service/http/HttpParam$Request;

    invoke-virtual {v1, v2, p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->execute(Lcom/baidu/yi/ads/service/http/HttpParam$Request;Lcom/baidu/yi/ads/service/http/HttpClient$Observer;)V

    .line 48
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 49
    .local v0, task:Lcom/baidu/yi/ads/service/http/HttpTask;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mHttpTask:Lcom/baidu/yi/ads/service/http/HttpTask;

    .line 51
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClientThread;->mObserver:Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;

    invoke-interface {v1}, Lcom/baidu/yi/ads/service/http/HttpClientThread$Observer;->onFinished()V

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/http/HttpTask;->onProgressed()V

    .line 56
    return-void
.end method
