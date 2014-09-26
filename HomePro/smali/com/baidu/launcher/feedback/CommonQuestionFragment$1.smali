.class Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;
.super Landroid/os/Handler;
.source "CommonQuestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/feedback/CommonQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #calls: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleInitCommonProblemItem()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$500(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #calls: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleGetCommonProblemItem()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$600(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #calls: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleShowCommonProblemItem()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$700(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    goto :goto_0

    .line 119
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #calls: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleSaveCommonProblemItem()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$800(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #calls: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->handleReadCommonProblem()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$900(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    goto :goto_0

    .line 125
    :pswitch_6
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #calls: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->setFailedPromptText()V
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$1000(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
