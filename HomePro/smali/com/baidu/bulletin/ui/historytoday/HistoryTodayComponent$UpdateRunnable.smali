.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter "channelItemInfo"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 349
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->update(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 354
    return-void
.end method
