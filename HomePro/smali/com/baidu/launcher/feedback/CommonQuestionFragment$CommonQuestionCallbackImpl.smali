.class Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;
.super Ljava/lang/Object;
.source "CommonQuestionFragment.java"

# interfaces
.implements Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/feedback/CommonQuestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonQuestionCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Lcom/baidu/launcher/feedback/CommonQuestionFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;-><init>(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)V

    return-void
.end method


# virtual methods
.method public onNeedUpdate(Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;)V
    .locals 2
    .parameter "aItem"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #setter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mCommonProblemUpdateItem:Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;
    invoke-static {v0, p1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$402(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;)Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #getter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$300(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    return-void
.end method

.method public onNoUpdate()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onSyncDone([Lcom/baidu/launcher/feedback/CommonQuestionItem;)V
    .locals 3
    .parameter "aResponse"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$102(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #getter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$100(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Ljava/util/ArrayList;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mComProblemContentRespones:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$202(Lcom/baidu/launcher/feedback/CommonQuestionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #getter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$300(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    return-void
.end method

.method public onUpdateFailed()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallbackImpl;->this$0:Lcom/baidu/launcher/feedback/CommonQuestionFragment;

    #getter for: Lcom/baidu/launcher/feedback/CommonQuestionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/feedback/CommonQuestionFragment;->access$300(Lcom/baidu/launcher/feedback/CommonQuestionFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    return-void
.end method
