.class public Lcom/baidu/yi/sdk/cloudstorage/Scheduler;
.super Landroid/os/Handler;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SchedulerThread"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .parameter "ctx"
    .parameter "looper"

    .prologue
    .line 18
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public appendRequest(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 36
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;

    .line 26
    .local v0, req:Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;
    if-nez v0, :cond_0

    .line 27
    const-string v1, "SchedulerThread"

    const-string v2, "null msg from service!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {v2, p0, v1, v3}, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;-><init>(Lcom/baidu/yi/sdk/cloudstorage/Scheduler;Landroid/content/Context;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;

    const/4 v4, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void

    .line 29
    :cond_0
    const-string v1, "SchedulerThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request for cloud: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->cloud:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
