.class Lcom/baidu/launcher/utils/EventNumberUtil$4;
.super Ljava/lang/Thread;
.source "EventNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/EventNumberUtil;->onChange(Z)V
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
    .line 286
    iput-object p1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$4;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    const-string v1, "EventNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$4;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #getter for: Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$300(Lcom/baidu/launcher/utils/EventNumberUtil;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    .line 291
    .local v0, callInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$4;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil$4;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #getter for: Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$700(Lcom/baidu/launcher/utils/EventNumberUtil;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/baidu/launcher/utils/EventNumberUtil;->getMissedCallCount(Landroid/content/Context;)I
    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$800(Lcom/baidu/launcher/utils/EventNumberUtil;Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    .line 292
    const-string v2, "EventNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange unreadcall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$4;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #getter for: Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$300(Lcom/baidu/launcher/utils/EventNumberUtil;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    iget v1, v1, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil$4;->this$0:Lcom/baidu/launcher/utils/EventNumberUtil;

    #getter for: Lcom/baidu/launcher/utils/EventNumberUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->access$500(Lcom/baidu/launcher/utils/EventNumberUtil;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    return-void
.end method
