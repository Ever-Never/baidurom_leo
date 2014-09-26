.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBulletinOpInfoCallback(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;>;"
    const/4 v4, 0x0

    .line 311
    if-nez p2, :cond_1

    .line 312
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 313
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    const-string v0, "HistoryTodayComponent"

    const-string v1, "BulletinOpItemInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    #getter for: Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->access$300(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    invoke-direct {v2, v3, v0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    :cond_1
    return-void
.end method
