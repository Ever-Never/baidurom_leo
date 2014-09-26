.class public Lcom/baidu/launcher/thememanager/network/HttpTask;
.super Landroid/os/AsyncTask;
.source "HttpTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/baidu/launcher/thememanager/network/Request;",
        "Lcom/baidu/launcher/thememanager/network/Progress;",
        "Lcom/baidu/launcher/thememanager/network/Response;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/launcher/thememanager/network/HttpTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpTask"


# instance fields
.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/thememanager/network/TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field public mRequest:Lcom/baidu/launcher/thememanager/network/Request;

.field protected m_isCanceled:Z

.field protected m_isRunning:Z

.field public req_tag:Ljava/lang/String;

.field protected timeStamp:J


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/network/TaskListener;)V
    .locals 1
    .parameter "mListener"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/thememanager/network/HttpTask;-><init>(Lcom/baidu/launcher/thememanager/network/TaskListener;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/thememanager/network/TaskListener;Z)V
    .locals 3
    .parameter "mListener"
    .parameter "autoretry"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->req_tag:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->timeStamp:J

    .line 30
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->m_isRunning:Z

    .line 31
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->m_isCanceled:Z

    .line 32
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/baidu/launcher/thememanager/network/HttpTask;)I
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v3, -0x1

    .line 102
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    move-object v2, p1

    .line 107
    .local v2, other:Lcom/baidu/launcher/thememanager/network/HttpTask;
    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/network/HttpTask;->getTimeStamp()J

    move-result-wide v0

    .line 109
    .local v0, oTimeStamp:J
    iget-wide v4, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->timeStamp:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    .line 113
    iget-wide v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->timeStamp:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_2

    .line 114
    const/4 v3, 0x1

    goto :goto_0

    .line 117
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/baidu/launcher/thememanager/network/HttpTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/network/HttpTask;->compareTo(Lcom/baidu/launcher/thememanager/network/HttpTask;)I

    move-result v0

    return v0
.end method

.method protected varargs doInBackground([Lcom/baidu/launcher/thememanager/network/Request;)Lcom/baidu/launcher/thememanager/network/Response;
    .locals 6
    .parameter "params"

    .prologue
    .line 44
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    .line 46
    const/4 v2, 0x0

    .line 49
    .local v2, res:Lcom/baidu/launcher/thememanager/network/Response;
    new-instance v1, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;

    invoke-direct {v1}, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;-><init>()V

    .line 51
    .local v1, httpclient:Lcom/baidu/launcher/thememanager/network/TransportHttpClient;
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    if-eqz v3, :cond_0

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/network/Request;->getVer()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 54
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/network/Request;->getMethodType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/network/Request;->getURL()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    iget-object v5, v5, Lcom/baidu/launcher/thememanager/network/Request;->mPostBody:Ljava/util/List;

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 59
    .local v0, data:[B
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    invoke-static {v0, v3}, Lcom/baidu/launcher/thememanager/network/Response;->parse([BLcom/baidu/launcher/thememanager/network/Request;)Lcom/baidu/launcher/thememanager/network/Response;

    move-result-object v2

    .line 64
    .end local v0           #data:[B
    :cond_0
    :goto_1
    return-object v2

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->sendHttpRequest(Lcom/baidu/launcher/thememanager/network/Request;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0       #data:[B
    goto :goto_0

    .line 61
    .end local v0           #data:[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, [Lcom/baidu/launcher/thememanager/network/Request;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/network/HttpTask;->doInBackground([Lcom/baidu/launcher/thememanager/network/Request;)Lcom/baidu/launcher/thememanager/network/Response;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/baidu/launcher/thememanager/network/Request;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->timeStamp:J

    return-wide v0
.end method

.method public getmListener()Lcom/baidu/launcher/thememanager/network/TaskListener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/TaskListener;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/TaskListener;

    invoke-interface {v0, p0}, Lcom/baidu/launcher/thememanager/network/TaskListener;->taskCancelled(Lcom/baidu/launcher/thememanager/network/HttpTask;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/baidu/launcher/thememanager/network/Response;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p1, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    iget v0, v0, Lcom/baidu/launcher/thememanager/network/Response$Result;->ret:I

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "HttpTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/network/Response;->getRawContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/TaskListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/baidu/launcher/thememanager/network/TaskListener;->taskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/TaskListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/launcher/thememanager/network/TaskListener;->taskCompleted(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Response;)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/TaskListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/baidu/launcher/thememanager/network/TaskListener;->taskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/baidu/launcher/thememanager/network/Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/network/HttpTask;->onPostExecute(Lcom/baidu/launcher/thememanager/network/Response;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/baidu/launcher/thememanager/network/Progress;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/TaskListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, p0, v1}, Lcom/baidu/launcher/thememanager/network/TaskListener;->taskProgress(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Progress;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, [Lcom/baidu/launcher/thememanager/network/Progress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/network/HttpTask;->onProgressUpdate([Lcom/baidu/launcher/thememanager/network/Progress;)V

    return-void
.end method

.method public setmListener(Lcom/baidu/launcher/thememanager/network/TaskListener;)V
    .locals 1
    .parameter "mListener"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/HttpTask;->mListener:Ljava/lang/ref/WeakReference;

    .line 126
    return-void
.end method
