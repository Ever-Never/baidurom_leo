.class Lcom/baidu/launcher/utils/EventNumberUtil$1;
.super Landroid/os/Handler;
.source "EventNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/EventNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/EventNumberUtil;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/EventNumberUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$1;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil$1;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #calls: Lcom/baidu/launcher/utils/EventNumberUtil;->handleMsgCall()V
    invoke-static {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$000(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil$1;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #calls: Lcom/baidu/launcher/utils/EventNumberUtil;->handleEmailMessage()V
    invoke-static {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$100(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil$1;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #calls: Lcom/baidu/launcher/utils/EventNumberUtil;->handleMsgMessage()V
    invoke-static {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$200(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
