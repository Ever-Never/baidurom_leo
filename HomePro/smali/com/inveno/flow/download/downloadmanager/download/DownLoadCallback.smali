.class public Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;
.super Landroid/os/Handler;
.source "DownLoadCallback.java"


# static fields
.field protected static final ADD_MESSAGE:I = 0x1

.field protected static final FAILURE_MESSAGE:I = 0x4

.field protected static final FINISH_MESSAGE:I = 0x5

.field protected static final PROGRESS_MESSAGE:I = 0x2

.field protected static final START_MESSAGE:I = 0x0

.field protected static final STOP_MESSAGE:I = 0x6

.field protected static final SUCCESS_MESSAGE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onStart()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 94
    .local v6, response:[Ljava/lang/Object;
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    aget-object v1, v6, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onAdd(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 97
    .end local v6           #response:[Ljava/lang/Object;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 98
    .restart local v6       #response:[Ljava/lang/Object;
    aget-object v1, v6, v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, v6, v2

    check-cast v2, Ljava/lang/String;

    .line 99
    const/4 v0, 0x2

    aget-object v0, v6, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x3

    aget-object v0, v6, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onLoading(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    .line 102
    .end local v6           #response:[Ljava/lang/Object;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 103
    .restart local v6       #response:[Ljava/lang/Object;
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v6           #response:[Ljava/lang/Object;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 107
    .restart local v6       #response:[Ljava/lang/Object;
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    aget-object v1, v6, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v6           #response:[Ljava/lang/Object;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 111
    .restart local v6       #response:[Ljava/lang/Object;
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v6           #response:[Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->onStop()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onAdd(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "url"
    .parameter "isInterrupt"

    .prologue
    .line 38
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "strMsg"

    .prologue
    .line 67
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 75
    return-void
.end method

.method public onLoading(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "url"
    .parameter "speed"
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 49
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 57
    return-void
.end method

.method protected sendAddMessage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "url"
    .parameter "isInterrupt"

    .prologue
    const/4 v2, 0x1

    .line 131
    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 131
    invoke-virtual {p0, v2, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "strMsg"

    .prologue
    .line 136
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method protected sendFinishMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 148
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method public sendLoadMessage(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 4
    .parameter "url"
    .parameter "speed"
    .parameter "download"
    .parameter "progress"

    .prologue
    const/4 v3, 0x2

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 127
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 126
    invoke-virtual {p0, v3, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method

.method public sendStartMessage()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method protected sendStopMessage()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public sendSuccessMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 121
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/flow/download/downloadmanager/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method
