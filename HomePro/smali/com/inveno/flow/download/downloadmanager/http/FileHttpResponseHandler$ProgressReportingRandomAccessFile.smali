.class Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressReportingRandomAccessFile"
.end annotation


# instance fields
.field private progress:I

.field final synthetic this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;


# direct methods
.method public constructor <init>(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    .line 142
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 150
    iget v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    .line 151
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousTime:J
    invoke-static {v3}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$0(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalTime:J
    invoke-static {v0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$1(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V

    .line 152
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousTime:J
    invoke-static {v0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$2(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V

    .line 153
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    iget v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    int-to-long v1, v1

    #setter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadSize:J
    invoke-static {v0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$3(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V

    .line 154
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadSize:J
    invoke-static {v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$4(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J
    invoke-static {v3}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$5(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    .line 155
    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalSize:J
    invoke-static {v3}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$6(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v3

    div-long/2addr v1, v3

    .line 154
    #setter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadPercent:J
    invoke-static {v0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$7(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;J)V

    .line 156
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    int-to-double v1, p3

    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->totalTime:J
    invoke-static {v3}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$8(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    #setter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->networkSpeed:D
    invoke-static {v0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$9(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;D)V

    .line 158
    return-void
.end method
