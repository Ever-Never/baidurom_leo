.class Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;
.super Landroid/os/AsyncTask;
.source "AppUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/util/AppUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCheckAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lyi/util/AppUpdateHelper$AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

.field private mListener:Lyi/util/AppUpdateHelper$UpdateListener;

.field final synthetic this$0:Lyi/util/AppUpdateHelper;


# direct methods
.method public constructor <init>(Lyi/util/AppUpdateHelper;Lyi/util/AppUpdateHelper$AppUpdateHttpClient;Lyi/util/AppUpdateHelper$UpdateListener;)V
    .locals 0
    .parameter
    .parameter "client"
    .parameter "listener"

    .prologue
    .line 250
    iput-object p1, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->this$0:Lyi/util/AppUpdateHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 251
    iput-object p2, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    .line 252
    iput-object p3, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;

    .line 253
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->doInBackground([Ljava/lang/Void;)Lyi/util/AppUpdateHelper$AppUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lyi/util/AppUpdateHelper$AppUpdateInfo;
    .locals 2
    .parameter "params"

    .prologue
    .line 257
    iget-object v0, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->this$0:Lyi/util/AppUpdateHelper;

    iget-object v1, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->mClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    #calls: Lyi/util/AppUpdateHelper;->checkUpdateSync(Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;
    invoke-static {v0, v1}, Lyi/util/AppUpdateHelper;->access$0(Lyi/util/AppUpdateHelper;Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lyi/util/AppUpdateHelper$AppUpdateInfo;

    invoke-virtual {p0, p1}, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->onPostExecute(Lyi/util/AppUpdateHelper$AppUpdateInfo;)V

    return-void
.end method

.method protected onPostExecute(Lyi/util/AppUpdateHelper$AppUpdateInfo;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 262
    iget-object v0, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;->mListener:Lyi/util/AppUpdateHelper$UpdateListener;

    invoke-interface {v0, p1}, Lyi/util/AppUpdateHelper$UpdateListener;->onCheckUpdateResult(Lyi/util/AppUpdateHelper$AppUpdateInfo;)V

    .line 265
    :cond_0
    return-void
.end method
