.class public Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;
.super Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field protected static final SUCCESS_JSON_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 177
    if-eqz p2, :cond_2

    .line 178
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, jsonResponse:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 180
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #jsonResponse:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 192
    :goto_0
    return-void

    .line 181
    .restart local v1       #jsonResponse:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 182
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #jsonResponse:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, ex:Lorg/json/JSONException;
    invoke-virtual {p0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0           #ex:Lorg/json/JSONException;
    .restart local v1       #jsonResponse:Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v1           #jsonResponse:Ljava/lang/Object;
    :cond_2
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 149
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 144
    .local v0, response:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->handleSuccessJsonMessage(I[Lorg/apache/http/Header;Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSuccessJsonMessage(I[Lorg/apache/http/Header;Ljava/lang/Object;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "jsonResponse"

    .prologue
    .line 152
    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 153
    check-cast p3, Lorg/json/JSONObject;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 159
    :goto_0
    return-void

    .line 154
    .restart local p3
    :cond_0
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 155
    check-cast p3, Lorg/json/JSONArray;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 157
    .restart local p3
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 113
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 112
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 109
    invoke-virtual {p0, p2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 110
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 86
    invoke-virtual {p0, p2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    .line 99
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 75
    invoke-virtual {p0, p1, p3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 76
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 64
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 55
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, result:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 165
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 168
    .end local v0           #result:Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    .line 169
    move-object v0, p1

    .line 171
    :cond_2
    return-object v0
.end method

.method protected sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 7
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    const/16 v2, 0xcc

    if-eq p1, v2, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, jsonResponse:Ljava/lang/Object;
    const/16 v2, 0x64

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v0, p3}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/inveno/flow/download/downloadmanager/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
