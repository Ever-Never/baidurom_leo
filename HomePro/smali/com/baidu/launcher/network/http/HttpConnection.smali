.class public Lcom/baidu/launcher/network/http/HttpConnection;
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
    .line 7
    invoke-static {}, Lcom/baidu/launcher/network/http/HttpScheduler;->getInstance()Lcom/baidu/launcher/network/http/HttpScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/network/http/HttpScheduler;->cancel(Lcom/baidu/launcher/network/http/HttpConnection;)I

    .line 8
    return-void
.end method
