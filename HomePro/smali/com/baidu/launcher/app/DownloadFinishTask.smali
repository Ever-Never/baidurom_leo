.class public Lcom/baidu/launcher/app/DownloadFinishTask;
.super Ljava/lang/Object;
.source "DownloadFinishTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private context:Landroid/content/Context;

.field private path:Ljava/lang/String;

.field private result:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "result"
    .parameter "type"
    .parameter "path"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->result:I

    .line 19
    iput p3, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->type:I

    .line 20
    iput-object p4, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->path:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 27
    iget v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->result:I

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/launcher/business/BusinessUtil;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 33
    iget v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->result:I

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/update/UpdateManager;->getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/launcher/update/UpdateManager;->mUpdateing:Z

    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/app/DownloadFinishTask;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/launcher/business/BusinessUtil;->installAppInSilent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
