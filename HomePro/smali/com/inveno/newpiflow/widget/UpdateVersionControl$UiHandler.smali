.class Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;
.super Landroid/os/Handler;
.source "UpdateVersionControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/widget/UpdateVersionControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;


# direct methods
.method private constructor <init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl;Lcom/inveno/newpiflow/widget/UpdateVersionControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;-><init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0x3e8

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$300(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inveno/newpiflow/model/UpdateVersion;

    .line 127
    .local v0, updateVersion:Lcom/inveno/newpiflow/model/UpdateVersion;
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #calls: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->startDownloadAvtivity(Lcom/inveno/newpiflow/model/UpdateVersion;)V
    invoke-static {v1, v0}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$400(Lcom/inveno/newpiflow/widget/UpdateVersionControl;Lcom/inveno/newpiflow/model/UpdateVersion;)V

    goto :goto_0

    .line 131
    .end local v0           #updateVersion:Lcom/inveno/newpiflow/model/UpdateVersion;
    :pswitch_1
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->tipsTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$500(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u60a8\u7684\u5df2\u662f\u6700\u65b0\u7248\u672c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v1, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$1;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$1;-><init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->tipsTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$500(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u60a8\u6ca1\u6709\u5b89\u88c5\u534e\u7a97"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v1, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$2;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$2;-><init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
