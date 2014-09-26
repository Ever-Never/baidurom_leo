.class public Lcom/baidu/bulletin/http/HttpTask;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/http/HttpTask$Progress;,
        Lcom/baidu/bulletin/http/HttpTask$State;
    }
.end annotation


# instance fields
.field public mBuffer:[B

.field mConnection:Lcom/baidu/bulletin/http/HttpConnection;

.field public mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

.field public mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/baidu/bulletin/http/HttpParam$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpParam$Request;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    .line 43
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$Progress;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpTask$Progress;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpTask;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/baidu/bulletin/http/HttpScheduler;->getInstance()Lcom/baidu/bulletin/http/HttpScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/http/HttpScheduler;->cancel(Lcom/baidu/bulletin/http/HttpTask;)I

    .line 59
    return-void
.end method

.method public onProgressed()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpParam$Request;->reset()V

    .line 48
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpTask;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpTask$Progress;->reset()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpTask;->mBuffer:[B

    .line 50
    return-void
.end method

.method public send(Lcom/baidu/bulletin/http/HttpConnection;)Z
    .locals 1
    .parameter "connection"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/bulletin/http/HttpTask;->mConnection:Lcom/baidu/bulletin/http/HttpConnection;

    .line 54
    invoke-static {}, Lcom/baidu/bulletin/http/HttpScheduler;->getInstance()Lcom/baidu/bulletin/http/HttpScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/http/HttpScheduler;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    move-result v0

    return v0
.end method
