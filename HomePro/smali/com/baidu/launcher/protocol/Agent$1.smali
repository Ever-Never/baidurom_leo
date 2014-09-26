.class final Lcom/baidu/launcher/protocol/Agent$1;
.super Lcom/baidu/launcher/protocol/BusinessHttpTask;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/protocol/Agent;->postFeedBack(Lcom/baidu/launcher/feedback/FeedBackPostInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/protocol/BusinessHttpTask;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onProcessed()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/baidu/launcher/protocol/BusinessHttpTask;->onProcessed()V

    .line 42
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v1, p0, Lcom/baidu/launcher/protocol/Agent$1;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v0, v1, :cond_1

    .line 43
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    const-string v1, "postFeedBack Task Finished!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v1, p0, Lcom/baidu/launcher/protocol/Agent$1;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v0, v1, :cond_2

    .line 45
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    const-string v1, "postFeedBack Task failed!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

    iget-object v1, p0, Lcom/baidu/launcher/protocol/Agent$1;->mProgress:Lcom/baidu/launcher/network/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpTask$Progress;->mState:Lcom/baidu/launcher/network/http/HttpTask$State;

    if-ne v0, v1, :cond_0

    .line 47
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    const-string v1, "postFeedBack Task cancelled!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
