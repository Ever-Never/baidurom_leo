.class public Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private lastListened:J

.field private final mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

.field private final mTotalSize:J

.field private mTransferred:J

.field final synthetic this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;J)V
    .locals 2
    .parameter
    .parameter "out"
    .parameter "listener"
    .parameter "totalSize"

    .prologue
    const-wide/16 v0, 0x0

    .line 574
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;

    .line 575
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 572
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->lastListened:J

    .line 576
    iput-object p3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    .line 577
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    .line 578
    iput-wide p4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTotalSize:J

    .line 579
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 603
    :cond_0
    const-string v2, "baiduPCS"

    const-string v3, "Cancel or paused in control in byte write"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->flush()V

    .line 605
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->close()V

    .line 606
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 607
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 608
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 612
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    .line 613
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    if-eqz v2, :cond_2

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 615
    .local v0, now:J
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->lastListened:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->getInterval()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 616
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->lastListened:J

    .line 617
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    iget-wide v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    iget-wide v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTotalSize:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->onProgress(JJ)V

    .line 620
    .end local v0           #now:J
    :cond_2
    return-void
.end method

.method public write([BII)V
    .locals 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 583
    :cond_0
    const-string v2, "baiduPCS"

    const-string v3, "Cancel or paused in control in array write"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->flush()V

    .line 585
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->close()V

    .line 586
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 587
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 588
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 590
    :cond_1
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 591
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    .line 592
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    if-eqz v2, :cond_2

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 594
    .local v0, now:J
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->lastListened:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->getInterval()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 595
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->lastListened:J

    .line 596
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    iget-wide v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTransferred:J

    iget-wide v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;->mTotalSize:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->onProgress(JJ)V

    .line 599
    .end local v0           #now:J
    :cond_2
    return-void
.end method
