.class public Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;
.super Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileHttpResponseHandler"

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".download"

.field public static final TIME_OUT:I = 0x7530


# instance fields
.field private baseDirFile:Ljava/io/File;

.field private downloadPercent:J

.field private downloadSize:J

.field private file:Ljava/io/File;

.field private interrupt:Z

.field private networkSpeed:D

.field private outputStream:Ljava/io/RandomAccessFile;

.field private previousFileSize:J

.field private previousTime:J

.field private tempFile:Ljava/io/File;

.field private timer:Ljava/util/Timer;

.field private totalSize:J

.field private totalTime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    .line 66
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 91
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rootFile"
    .parameter "fileName"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    .line 66
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    .line 82
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 83
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "rootFile"
    .parameter "fileName"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    .line 66
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    .line 71
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->url:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 75
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalTime:J

    return-void
.end method

.method static synthetic access$10(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    return v0
.end method

.method static synthetic access$11(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadPercent:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$13(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)D
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->networkSpeed:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadSize:J

    return-void
.end method

.method static synthetic access$4(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadSize:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadPercent:J

    return-void
.end method

.method static synthetic access$8(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->networkSpeed:D

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;

    invoke-direct {v1, p0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;-><init>(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)V

    .line 119
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    .line 104
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 120
    return-void
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 13
    .parameter "input"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/16 v9, 0x2000

    .line 365
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v8

    .line 407
    :goto_0
    return v1

    .line 369
    :cond_1
    new-array v0, v9, [B

    .line 371
    .local v0, buffer:[B
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 372
    .local v6, in:Ljava/io/BufferedInputStream;
    const-string v9, "FileHttpResponseHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "length"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v7, 0x0

    .line 374
    .local v7, n:I
    const-wide/16 v2, -0x1

    .local v2, errorBlockTimePreviousTime:J
    const-wide/16 v4, 0x0

    .line 376
    .local v4, expireTime:J
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-virtual {p2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 377
    :cond_2
    :goto_1
    iget-boolean v9, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    .line 403
    :cond_3
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 404
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 405
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 378
    :cond_4
    const/4 v9, 0x0

    const/16 v10, 0x2000

    :try_start_1
    invoke-virtual {v6, v0, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 379
    if-eq v7, v8, :cond_3

    .line 382
    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 383
    add-int/2addr v1, v7

    .line 386
    iget-wide v9, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->networkSpeed:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_6

    .line 387
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_5

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v4, v9, v2

    .line 390
    const-wide/16 v9, 0x7530

    cmp-long v9, v4, v9

    if-lez v9, :cond_2

    .line 391
    new-instance v8, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 392
    const-string v9, "connection time out."

    .line 391
    invoke-direct {v8, v9}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :catchall_0
    move-exception v8

    .line 403
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 404
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 405
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 406
    throw v8

    .line 395
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    goto :goto_1

    .line 398
    :cond_6
    const-wide/16 v4, 0x0

    .line 399
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getDownloadPercent()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadPercent:J

    return-wide v0
.end method

.method public getDownloadSize()J
    .locals 4

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadSize:J

    iget-wide v2, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDownloadSpeed()D
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->networkSpeed:D

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 257
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 262
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 269
    invoke-super {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 272
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 265
    .local v0, response:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 266
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    .line 265
    invoke-virtual {p0, v2, v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "responseBody"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->onSuccess(I[B)V

    .line 253
    return-void
.end method

.method public isInterrupt()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 1
    .parameter "error"
    .parameter "binaryData"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 231
    invoke-virtual {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 232
    return-void
.end method

.method public onPause(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 201
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "content"

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 219
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .parameter "statusCode"
    .parameter "binaryData"

    .prologue
    .line 226
    invoke-virtual {p0, p2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->onSuccess([B)V

    .line 227
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "content"

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .parameter "binaryData"

    .prologue
    .line 223
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 241
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 242
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 243
    aput-object p2, v0, v2

    .line 242
    invoke-virtual {p0, v2, v0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 244
    return-void
.end method

.method protected sendProgressMessage(Ljava/lang/String;JI)V
    .locals 4
    .parameter "speed"
    .parameter "download"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v1, 0x1

    .line 248
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 247
    invoke-virtual {p0, v3, v0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .parameter "response"

    .prologue
    .line 277
    const/4 v4, 0x0

    .line 278
    .local v4, error:Ljava/lang/Throwable;
    const/4 v6, 0x0

    check-cast v6, [B

    .line 279
    .local v6, responseBody:[B
    const-wide/16 v7, -0x1

    .line 280
    .local v7, result:J
    const/4 v9, 0x0

    .line 281
    .local v9, statusCode:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousTime:J

    .line 283
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 284
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 286
    .local v1, contentLenght:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-nez v10, :cond_0

    .line 287
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v10

    int-to-long v1, v10

    .line 289
    :cond_0
    iget-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J

    add-long/2addr v10, v1

    iput-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    .line 291
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "totalSize: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    iget-object v12, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 295
    const-string v10, "FileHttpResponseHandler"

    .line 296
    const-string v11, "Output file already exists. Skipping download."

    .line 295
    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v10, Lcom/inveno/flow/exception/FileAlreadyExistException;

    .line 299
    const-string v11, "Output file already exists. Skipping download."

    .line 298
    invoke-direct {v10, v11}, Lcom/inveno/flow/exception/FileAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inveno/flow/exception/FileAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 323
    .end local v1           #contentLenght:J
    :catch_0
    move-exception v3

    .line 324
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0, v3, v6}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 325
    move-object v4, v3

    .line 338
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    if-nez v10, :cond_1

    if-eqz v4, :cond_7

    .line 339
    :cond_1
    const-string v10, "\u8fdb\u4e86\u9519\u8bef\u4e86"

    invoke-static {v10}, Lcom/inveno/flow/tools/commontools/PfTools;->showLogA(Ljava/lang/String;)V

    .line 340
    if-eqz v4, :cond_2

    .line 341
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Download failed."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_2
    instance-of v10, v4, Lcom/inveno/flow/exception/FileAlreadyExistException;

    if-eqz v10, :cond_6

    .line 344
    const-string v10, "\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendSuccessMessage(I[B)V

    .line 353
    :goto_1
    return-void

    .line 300
    .restart local v1       #contentLenght:J
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 302
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J

    .line 305
    const-string v10, "FileHttpResponseHandler"

    const-string v11, "File is not complete, download now."

    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File length:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 307
    const-string v12, " totalSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 306
    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_4
    new-instance v10, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;

    iget-object v11, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    const-string v12, "rw"

    invoke-direct {v10, p0, v11, v12}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;-><init>(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->outputStream:Ljava/io/RandomAccessFile;

    .line 311
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 312
    .local v5, input:Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->startTimer()V

    .line 313
    iget-object v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->outputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v5, v10}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 314
    .local v0, bytesCopied:I
    iget-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J

    int-to-long v12, v0

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 315
    iget-wide v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    if-nez v10, :cond_5

    .line 316
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Download incomplete: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 317
    const-string v12, " != "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 316
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/inveno/flow/exception/FileAlreadyExistException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 326
    .end local v0           #bytesCopied:I
    .end local v1           #contentLenght:J
    .end local v5           #input:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 328
    .local v3, e:Lcom/inveno/flow/exception/FileAlreadyExistException;
    invoke-virtual {v3}, Lcom/inveno/flow/exception/FileAlreadyExistException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendSuccessMessage(I[B)V

    .line 329
    move-object v4, v3

    goto/16 :goto_0

    .line 320
    .end local v3           #e:Lcom/inveno/flow/exception/FileAlreadyExistException;
    .restart local v0       #bytesCopied:I
    .restart local v1       #contentLenght:J
    .restart local v5       #input:Ljava/io/InputStream;
    :cond_5
    :try_start_2
    const-string v10, "FileHttpResponseHandler"

    const-string v11, "Download completed successfully."

    invoke-static {v10, v11}, Lcom/inveno/flow/tools/commontools/PfTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/inveno/flow/exception/FileAlreadyExistException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 322
    int-to-long v7, v0

    goto/16 :goto_0

    .line 330
    .end local v0           #bytesCopied:I
    .end local v1           #contentLenght:J
    .end local v5           #input:Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 331
    .local v3, e:Ljava/lang/IllegalStateException;
    move-object v4, v3

    .line 332
    invoke-virtual {p0, v3, v6}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto/16 :goto_0

    .line 333
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    .line 334
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {p0, v3, v6}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 335
    move-object v4, v3

    goto/16 :goto_0

    .line 347
    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    invoke-virtual {p0, v4, v6}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto/16 :goto_1

    .line 351
    :cond_7
    iget-object v10, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    iget-object v11, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 352
    const-string v10, "\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto/16 :goto_1
.end method

.method protected sendSuccessMessage(I[B)V
    .locals 4
    .parameter "statusCode"
    .parameter "responseBody"

    .prologue
    .line 235
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 236
    aput-object p2, v1, v2

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public setInterrupt(Z)V
    .locals 0
    .parameter "interrupt"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z

    .line 168
    return-void
.end method

.method public setPreviousFileSize(J)V
    .locals 0
    .parameter "previousFileSize"

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J

    .line 192
    return-void
.end method
