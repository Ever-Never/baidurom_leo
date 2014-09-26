.class Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;
.super Ljava/lang/Object;
.source "DownloadFileManager.java"

# interfaces
.implements Lcom/baidu/launcher/network/http/DownloadFileTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/DownloadFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/network/http/DownloadFileManager;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/network/http/DownloadFileManager;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;->this$0:Lcom/baidu/launcher/network/http/DownloadFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/network/http/DownloadFileManager;Lcom/baidu/launcher/network/http/DownloadFileManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;-><init>(Lcom/baidu/launcher/network/http/DownloadFileManager;)V

    return-void
.end method


# virtual methods
.method public onFinish(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;->this$0:Lcom/baidu/launcher/network/http/DownloadFileManager;

    #getter for: Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;
    invoke-static {v2}, Lcom/baidu/launcher/network/http/DownloadFileManager;->access$100(Lcom/baidu/launcher/network/http/DownloadFileManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/network/http/DownloadFileTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/network/http/DownloadFileTask;

    .line 191
    .local v1, task:Lcom/baidu/launcher/network/http/DownloadFileTask;
    iget-wide v2, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 195
    .end local v1           #task:Lcom/baidu/launcher/network/http/DownloadFileTask;
    :cond_1
    return-void
.end method
