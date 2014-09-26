.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryTodayChannelItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V

    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v0, 0x0

    .line 328
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 332
    .restart local v0       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 333
    const-string v1, "HistoryTodayComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelItemInfo content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    #getter for: Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->access$300(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {v2, v3, v0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void

    .line 335
    :cond_1
    const-string v1, "HistoryTodayComponent"

    const-string v2, "channelItemIno is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
