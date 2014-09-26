.class public Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# static fields
.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final PROGRESS_MESSAGE:I = 0x0

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x4


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler$1;-><init>(Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 115
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 118
    .local v0, response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 119
    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 118
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleProgressMessage(Ljava/lang/String;JI)V

    goto :goto_0

    .line 122
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 123
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 124
    aget-object v1, v0, v4

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/String;

    .line 123
    invoke-virtual {p0, v3, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 128
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 134
    :pswitch_4
    invoke-virtual {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected handleProgressMessage(Ljava/lang/String;JI)V
    .locals 0
    .parameter "speed"
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onProgress(Ljava/lang/String;JI)V

    .line 110
    return-void
.end method

.method protected handleSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "responseMessage"
    .parameter "response"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 154
    iput p1, v0, Landroid/os/Message;->what:I

    .line 155
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 67
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onProgress(Ljava/lang/String;JI)V
    .locals 0
    .parameter "speed"
    .parameter "donwload"
    .parameter "progress"

    .prologue
    .line 55
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "content"

    .prologue
    .line 62
    invoke-virtual {p0, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "content"

    .prologue
    .line 58
    invoke-virtual {p0, p1, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 51
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 82
    aput-object p2, v0, v2

    .line 81
    invoke-virtual {p0, v2, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 83
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 87
    aput-object p2, v0, v2

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method

.method protected sendFinishMessage()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 96
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 161
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 162
    .local v4, status:Lorg/apache/http/StatusLine;
    const/4 v3, 0x0

    .line 164
    .local v3, responseBody:Ljava/lang/String;
    const/4 v1, 0x0

    .line 165
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 166
    .local v5, temp:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 167
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 174
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #temp:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_1

    .line 175
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    .line 176
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 175
    invoke-virtual {p0, v6, v3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 182
    :goto_1
    return-void

    .line 170
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 180
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 179
    invoke-virtual {p0, v6, v7, v3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #temp:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    goto :goto_2
.end method

.method protected sendStartMessage()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method

.method protected sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 76
    const/4 v0, 0x4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 77
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 78
    return-void
.end method
