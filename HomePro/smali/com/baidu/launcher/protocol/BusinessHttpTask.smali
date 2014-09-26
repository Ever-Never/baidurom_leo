.class public Lcom/baidu/launcher/protocol/BusinessHttpTask;
.super Lcom/baidu/launcher/network/http/HttpTask;
.source "BusinessHttpTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BusinessHttpTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpTask;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V
    .locals 1
    .parameter "aMethod"
    .parameter "aHost"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpTask;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iput-object p1, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iput-object p2, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "aPostData"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpTask;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mPostData:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V
    .locals 1
    .parameter "aPostData"
    .parameter "aMethod"
    .parameter "aHost"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/HttpTask;-><init>()V

    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iput-object p2, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    .line 25
    iget-object v0, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mRequest:Lcom/baidu/launcher/network/http/HttpParam$Request;

    iput-object p3, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mPostData:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected onFailed()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected onFinished()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected onProcessed()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/baidu/launcher/network/http/HttpTask;->onProcessed()V

    .line 33
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v1, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v0, v1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFinished()V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v1, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v0, v1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onFailed()V

    .line 37
    const-string v0, "BusinessHttpTask"

    const-string v1, "onFailed : json"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v1, p0, Lcom/baidu/launcher/protocol/BusinessHttpTask;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onCancelled()V

    .line 40
    const-string v0, "BusinessHttpTask"

    const-string v1, "Cancelled : json"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
