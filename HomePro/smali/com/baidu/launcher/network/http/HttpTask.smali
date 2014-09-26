.class public Lcom/baidu/launcher/network/http/HttpTask;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/HttpTask$Progress;,
        Lcom/baidu/launcher/network/http/HttpTask$Priority;,
        Lcom/baidu/launcher/network/http/HttpTask$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpTask"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field protected callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/network/http/IHttpCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mBuffer:[B

.field public mBufferLen:I

.field private mConnection:Lcom/baidu/launcher/network/http/HttpConnection;

.field public mPostData:Ljava/lang/String;

.field public mPriority:Ljava/lang/Integer;

.field public mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

.field public mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mPriority:Ljava/lang/Integer;

    .line 63
    new-instance v0, Lcom/baidu/launcher/network/http/HttpParam$Request;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/HttpParam$Request;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    .line 64
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/network/http/HttpTask$Progress;-><init>(Lcom/baidu/launcher/network/http/HttpTask;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    .line 66
    iput v1, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBufferLen:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mPostData:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/network/http/HttpConnection;Lcom/baidu/launcher/network/http/IHttpCallback;)V
    .locals 0
    .parameter "connection"
    .parameter "callback"

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/baidu/launcher/network/http/HttpTask;-><init>(Lcom/baidu/launcher/network/http/IHttpCallback;)V

    .line 82
    iput-object p1, p0, Lcom/baidu/launcher/network/http/HttpTask;->mConnection:Lcom/baidu/launcher/network/http/HttpConnection;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/network/http/IHttpCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mPriority:Ljava/lang/Integer;

    .line 63
    new-instance v0, Lcom/baidu/launcher/network/http/HttpParam$Request;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/HttpParam$Request;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    .line 64
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/network/http/HttpTask$Progress;-><init>(Lcom/baidu/launcher/network/http/HttpTask;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    .line 66
    iput v1, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBufferLen:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mPostData:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    .line 78
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBufferLen:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBuffer:[B

    .line 107
    invoke-static {}, Lcom/baidu/launcher/network/http/HttpScheduler;->getInstance()Lcom/baidu/launcher/network/http/HttpScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->cancel(Lcom/baidu/launcher/network/http/HttpTask;)I

    .line 108
    return-void
.end method

.method public getHttpResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mPostData:Ljava/lang/String;

    return-object v0
.end method

.method protected onProcessed()V
    .locals 6

    .prologue
    .line 112
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v2, v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Sending:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-eq v2, v3, :cond_0

    .line 116
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->StartReceive:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v2, v3, :cond_2

    .line 117
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 119
    :cond_2
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Receiving:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v2, v3, :cond_3

    .line 120
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBuffer:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBufferLen:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 122
    :cond_3
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v2, v3, :cond_4

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 125
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/network/http/IHttpCallback;

    .line 134
    .local v0, callback:Lcom/baidu/launcher/network/http/IHttpCallback;
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p0}, Lcom/baidu/launcher/network/http/IHttpCallback;->TaskSuccessed(Lcom/baidu/launcher/network/http/HttpTask;)V

    goto :goto_0

    .line 126
    .end local v0           #callback:Lcom/baidu/launcher/network/http/IHttpCallback;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    const-string v2, "HttpTask"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v2, v3, :cond_5

    .line 141
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/network/http/IHttpCallback;

    .line 144
    .restart local v0       #callback:Lcom/baidu/launcher/network/http/IHttpCallback;
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p0}, Lcom/baidu/launcher/network/http/IHttpCallback;->TaskFailed(Lcom/baidu/launcher/network/http/HttpTask;)V

    goto :goto_0

    .line 149
    .end local v0           #callback:Lcom/baidu/launcher/network/http/IHttpCallback;
    :cond_5
    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v3, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v3, v3, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v2, v3, :cond_0

    .line 151
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/baidu/launcher/network/http/HttpTask;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/network/http/IHttpCallback;

    .line 154
    .restart local v0       #callback:Lcom/baidu/launcher/network/http/IHttpCallback;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p0}, Lcom/baidu/launcher/network/http/IHttpCallback;->TaskCancelled(Lcom/baidu/launcher/network/http/HttpTask;)V

    goto/16 :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpParam$Request;->reset()V

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpTask$Progress;->reset()V

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

    iput-object v1, v0, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBuffer:[B

    .line 90
    return-void
.end method

.method public final send()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    invoke-virtual {v0}, Lcom/baidu/launcher/network/http/HttpTask$Progress;->reset()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mBuffer:[B

    .line 95
    invoke-static {}, Lcom/baidu/launcher/network/http/HttpScheduler;->getInstance()Lcom/baidu/launcher/network/http/HttpScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->send(Lcom/baidu/launcher/network/http/HttpTask;)Z

    move-result v0

    return v0
.end method

.method public final send(Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)Z
    .locals 1
    .parameter "method"
    .parameter "host"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iput-object p1, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iput-object p2, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/baidu/launcher/network/http/HttpTask;->send()Z

    move-result v0

    return v0
.end method

.method final viaConnection(Lcom/baidu/launcher/network/http/HttpConnection;)Z
    .locals 1
    .parameter "connection"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/network/http/HttpTask;->mConnection:Lcom/baidu/launcher/network/http/HttpConnection;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
