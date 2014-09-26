.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HistoryTodayComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    const/4 v2, 0x0

    #calls: Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->isShowOpView(Z)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->access$600(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Z)V

    .line 506
    :cond_0
    return-void
.end method
