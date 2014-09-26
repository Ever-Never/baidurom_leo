.class Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;
.super Ljava/io/FilterInputStream;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudInputStream"
.end annotation


# instance fields
.field private final mInfo:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

.field private final mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    .line 344
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 346
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 347
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 349
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;

    const/4 v3, -0x2

    invoke-direct {v2, p1, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;I)V

    throw v2

    .line 355
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 362
    invoke-direct {p0, p3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->getInfoFromResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    .line 363
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;

    const/4 v3, -0x3

    invoke-direct {v2, p1, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;I)V

    throw v2
.end method

.method private getInfoFromResponse(Lorg/apache/http/HttpResponse;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 326
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v1

    .line 330
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 331
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    invoke-direct {v1}, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;-><init>()V

    .line 337
    .local v1, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 375
    return-void
.end method

.method public copyStreamToOutput(Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;)V
    .locals 19
    .parameter "os"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const-wide/16 v13, 0x0

    .line 390
    .local v13, totalRead:J
    const-wide/16 v5, 0x0

    .line 391
    .local v5, lastListened:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    iget-wide v7, v15, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    .line 394
    .local v7, length:J
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 396
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .local v2, bos:Ljava/io/BufferedOutputStream;
    const/16 v15, 0x1000

    :try_start_1
    new-array v3, v15, [B

    .line 399
    .local v3, buffer:[B
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    iget v15, v15, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v16, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    iget v15, v15, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v16, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 400
    :cond_1
    const-string v15, "baiduPCS"

    const-string v16, "Cancel or paused in control"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v12, -0x1

    .line 405
    .local v12, read:I
    :goto_1
    if-gez v12, :cond_5

    .line 406
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-ltz v15, :cond_6

    cmp-long v15, v13, v7

    if-gez v15, :cond_6

    .line 409
    new-instance v15, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v13, v14}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;J)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    .end local v3           #buffer:[B
    .end local v12           #read:I
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 440
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .local v4, e:Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, message:Ljava/lang/String;
    if-eqz v9, :cond_a

    const-string v15, "No space"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 443
    new-instance v15, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-object/from16 v16, v0

    const/16 v17, -0x66

    invoke-direct/range {v15 .. v17}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;I)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #message:Ljava/lang/String;
    :catchall_0
    move-exception v15

    .line 454
    :goto_3
    if-eqz v1, :cond_2

    .line 456
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 460
    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    .line 462
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 469
    :cond_3
    :goto_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 472
    :goto_6
    throw v15

    .line 403
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #buffer:[B
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->read([B)I

    move-result v12

    .restart local v12       #read:I
    goto :goto_1

    .line 415
    :cond_5
    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 417
    int-to-long v15, v12

    add-long/2addr v13, v15

    .line 419
    if-eqz p2, :cond_0

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 421
    .local v10, now:J
    sub-long v15, v10, v5

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->getInterval()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 422
    move-wide v5, v10

    .line 423
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v7, v8}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->onProgress(JJ)V

    goto/16 :goto_0

    .line 453
    .end local v3           #buffer:[B
    .end local v10           #now:J
    .end local v12           #read:I
    :catchall_1
    move-exception v15

    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 428
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #buffer:[B
    .restart local v12       #read:I
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 429
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 432
    :try_start_7
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/io/FileOutputStream;

    if-eqz v15, :cond_7

    .line 433
    move-object/from16 v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/SyncFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 454
    :cond_7
    if-eqz v2, :cond_8

    .line 456
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 460
    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 462
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 469
    :cond_9
    :goto_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 473
    :goto_9
    return-void

    .line 435
    :catch_1
    move-exception v4

    .line 436
    .local v4, e:Ljava/io/SyncFailedException;
    :try_start_b
    new-instance v15, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-object/from16 v16, v0

    const/16 v17, -0x3

    invoke-direct/range {v15 .. v17}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;I)V

    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 451
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #buffer:[B
    .end local v12           #read:I
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v9       #message:Ljava/lang/String;
    :cond_a
    :try_start_c
    new-instance v15, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v13, v14}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;J)V

    throw v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 457
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #message:Ljava/lang/String;
    :catch_2
    move-exception v16

    goto :goto_4

    .line 463
    :catch_3
    move-exception v16

    goto :goto_5

    .line 470
    :catch_4
    move-exception v16

    goto :goto_6

    .line 457
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #buffer:[B
    .restart local v12       #read:I
    :catch_5
    move-exception v15

    goto :goto_7

    .line 463
    :catch_6
    move-exception v15

    goto :goto_8

    .line 470
    :catch_7
    move-exception v15

    goto :goto_9

    .line 439
    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #buffer:[B
    .end local v12           #read:I
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v4

    goto/16 :goto_2
.end method

.method public getFileInfo()Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->mInfo:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    return-object v0
.end method
