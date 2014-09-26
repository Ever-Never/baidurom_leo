.class Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;
.super Ljava/util/TimerTask;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    .line 104
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 107
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->interrupt:Z
    invoke-static {v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$10(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadPercent:J
    invoke-static {v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$11(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$12(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 111
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, df:Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->networkSpeed:D
    invoke-static {v3}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$13(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "kb/s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadSize:J
    invoke-static {v3}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$4(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->previousFileSize:J
    invoke-static {v5}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$5(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->downloadPercent:J
    invoke-static {v5}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$11(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 112
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->sendProgressMessage(Ljava/lang/String;JI)V

    .line 118
    .end local v0           #df:Ljava/text/DecimalFormat;
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    #getter for: Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->access$12(Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
