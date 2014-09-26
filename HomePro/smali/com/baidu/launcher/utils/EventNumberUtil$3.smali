.class Lcom/baidu/launcher/utils/EventNumberUtil$3;
.super Ljava/lang/Thread;
.source "EventNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/EventNumberUtil;->handleEmailMessage()V
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
    .line 124
    iput-object p1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$3;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 127
    const-string v0, "EventNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange email = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil$3;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #getter for: Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$300(Lcom/baidu/launcher/utils/EventNumberUtil;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$3;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #calls: Lcom/baidu/launcher/utils/EventNumberUtil;->getUnreadEmailCount()I
    invoke-static {v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$600(Lcom/baidu/launcher/utils/EventNumberUtil;)I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil$3;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #getter for: Lcom/baidu/launcher/utils/EventNumberUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$500(Lcom/baidu/launcher/utils/EventNumberUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method
