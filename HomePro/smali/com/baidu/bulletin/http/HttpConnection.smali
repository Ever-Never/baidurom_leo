.class public Lcom/baidu/bulletin/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/baidu/bulletin/http/HttpScheduler;->getInstance()Lcom/baidu/bulletin/http/HttpScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/http/HttpScheduler;->cancel(Lcom/baidu/bulletin/http/HttpConnection;)I

    .line 12
    return-void
.end method

.method public send(Lcom/baidu/bulletin/http/HttpTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 7
    invoke-virtual {p1, p0}, Lcom/baidu/bulletin/http/HttpTask;->send(Lcom/baidu/bulletin/http/HttpConnection;)Z

    move-result v0

    return v0
.end method