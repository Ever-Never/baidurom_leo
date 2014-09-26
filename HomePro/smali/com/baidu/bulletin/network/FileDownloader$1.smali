.class Lcom/baidu/bulletin/network/FileDownloader$1;
.super Lcom/baidu/bulletin/http/HttpTask;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/FileDownloader;->downloadWithNewHttptask(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/FileDownloader;

.field final synthetic val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iput-object p2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressed()V
    .locals 6

    .prologue
    .line 252
    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Finished:Lcom/baidu/bulletin/http/HttpTask$State;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-object v2, v2, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    if-ne v1, v2, :cond_5

    .line 253
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->hasFreeStorageSpace()Z
    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader;->access$400(Lcom/baidu/bulletin/network/FileDownloader;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileItemCancelled:Z
    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$200(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    iget-object v2, v2, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    iget-wide v2, v2, Lcom/baidu/bulletin/http/HttpParam$Range;->total:J

    iput-wide v2, v1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mBuffer:[B

    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-wide v3, v3, Lcom/baidu/bulletin/http/HttpTask$Progress;->mFinished:J

    iget-object v5, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handleRequestFinished([BJLcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/bulletin/network/FileDownloader;->access$500(Lcom/baidu/bulletin/network/FileDownloader;[BJLcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    iget-wide v2, v1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iget-object v4, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-wide v4, v4, Lcom/baidu/bulletin/http/HttpTask$Progress;->mFinished:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    .line 267
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    iget-wide v3, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Finished size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    iget-wide v3, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #getter for: Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mRequest:Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->access$800(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handleDownloadProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$900(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    iget-wide v1, v1, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFinished:J

    iget-object v3, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    iget-wide v3, v3, Lcom/baidu/bulletin/network/FileDownloader$FileItem;->mFileSize:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    iget-object v1, v1, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    const v2, 0xc800

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpParam$Range;->next(I)V

    .line 278
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    #getter for: Lcom/baidu/bulletin/network/FileDownloader;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;
    invoke-static {v1}, Lcom/baidu/bulletin/network/FileDownloader;->access$1000(Lcom/baidu/bulletin/network/FileDownloader;)Lcom/baidu/bulletin/http/HttpConnection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 262
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    goto :goto_0

    .line 280
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enter handledTaskFinshed"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFinshed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$1100(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    goto :goto_0

    .line 287
    :cond_4
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in onProgressed(), Storage Has no more Free Space, handledTaskFailed"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    .line 289
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->nofityStorageSpaceNotEnoughChange()V

    goto :goto_0

    .line 291
    :cond_5
    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Failed:Lcom/baidu/bulletin/http/HttpTask$State;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-object v2, v2, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    if-ne v1, v2, :cond_6

    .line 292
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    goto :goto_0

    .line 293
    :cond_6
    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-object v2, v2, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    if-ne v1, v2, :cond_1

    .line 294
    invoke-static {}, Lcom/baidu/bulletin/network/FileDownloader;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Task canceled!!! >>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->this$0:Lcom/baidu/bulletin/network/FileDownloader;

    iget-object v2, p0, Lcom/baidu/bulletin/network/FileDownloader$1;->val$fileitem:Lcom/baidu/bulletin/network/FileDownloader$FileItem;

    #calls: Lcom/baidu/bulletin/network/FileDownloader;->handledTaskFailed(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/network/FileDownloader;->access$600(Lcom/baidu/bulletin/network/FileDownloader;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    goto :goto_0
.end method
