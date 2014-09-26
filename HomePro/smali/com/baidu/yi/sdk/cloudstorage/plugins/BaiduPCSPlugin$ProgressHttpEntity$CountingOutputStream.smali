.class Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private intervalMs:J

.field private lastListened:J

.field final synthetic this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

.field private transferred:J


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter "out"

    .prologue
    const-wide/16 v0, 0x0

    .line 645
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    .line 646
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 641
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    .line 642
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    .line 643
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    .line 647
    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    invoke-static {p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->getInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    .line 648
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
    .line 670
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$2(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$2(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 671
    :cond_0
    const-string v2, "baiduPCS"

    const-string v3, "Cancel or paused in control"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 675
    :cond_2
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 676
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 678
    .local v0, now:J
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 679
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    .line 680
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->length:J
    invoke-static {v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$1(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->onProgress(JJ)V

    goto :goto_0
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
    .line 652
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$2(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$2(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    move-result-object v2

    iget v2, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mControl:I

    sget-object v3, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 653
    :cond_0
    const-string v2, "baiduPCS"

    const-string v3, "Cancel or paused in control"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 660
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 662
    .local v0, now:J
    iget-wide v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->intervalMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 663
    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->lastListened:J

    .line 664
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    invoke-static {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->transferred:J

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;->this$1:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;

    #getter for: Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->length:J
    invoke-static {v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->access$1(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;->onProgress(JJ)V

    goto :goto_0
.end method
