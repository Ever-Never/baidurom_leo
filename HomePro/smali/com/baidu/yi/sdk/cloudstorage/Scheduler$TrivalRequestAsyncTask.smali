.class Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrivalRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;",
        "Ljava/lang/Void;",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWhat:I

.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/Scheduler;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/Scheduler;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "what"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->this$0:Lcom/baidu/yi/sdk/cloudstorage/Scheduler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mContext:Landroid/content/Context;

    .line 48
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mWhat:I

    .line 49
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)Landroid/os/Message;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 58
    iget v1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mWhat:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 59
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleListDirectory(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)Landroid/os/Message;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget v1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mWhat:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 61
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/PluginManager;->handleDeleteFile(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    iget v1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mWhat:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 65
    iget v1, p0, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->mWhat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;

    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->doInBackground([Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 54
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/Scheduler$TrivalRequestAsyncTask;->onPostExecute(Landroid/os/Message;)V

    return-void
.end method
