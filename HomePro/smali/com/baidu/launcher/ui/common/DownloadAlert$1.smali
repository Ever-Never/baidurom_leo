.class Lcom/baidu/launcher/ui/common/DownloadAlert$1;
.super Landroid/os/Handler;
.source "DownloadAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/DownloadAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/common/DownloadAlert;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/DownloadAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/DownloadAlert$1;->this$0:Lcom/baidu/launcher/ui/common/DownloadAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 135
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v6

    .line 138
    .local v4, total:J
    iget v6, p1, Landroid/os/Message;->arg2:I

    int-to-long v0, v6

    .line 139
    .local v0, current:J
    const/4 v2, 0x0

    .line 140
    .local v2, progress:I
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 141
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 142
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v0

    div-long/2addr v6, v4

    long-to-int v2, v6

    .line 145
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/DownloadAlert$1;->this$0:Lcom/baidu/launcher/ui/common/DownloadAlert;

    #calls: Lcom/baidu/launcher/ui/common/DownloadAlert;->updateProgress(I)V
    invoke-static {v6, v2}, Lcom/baidu/launcher/ui/common/DownloadAlert;->access$000(Lcom/baidu/launcher/ui/common/DownloadAlert;I)V

    goto :goto_0

    .line 148
    .end local v0           #current:J
    .end local v2           #progress:I
    .end local v4           #total:J
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v3, result:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/DownloadAlert$1;->this$0:Lcom/baidu/launcher/ui/common/DownloadAlert;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/common/DownloadAlert;->finish()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
