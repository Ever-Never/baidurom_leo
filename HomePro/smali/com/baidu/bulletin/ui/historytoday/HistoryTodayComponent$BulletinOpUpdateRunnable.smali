.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;
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
    name = "BulletinOpUpdateRunnable"
.end annotation


# instance fields
.field private mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;)V
    .locals 0
    .parameter
    .parameter "bulletinOpItemInfo"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    .line 364
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->updateHistoryComponentOp(Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;)V

    .line 369
    return-void
.end method
