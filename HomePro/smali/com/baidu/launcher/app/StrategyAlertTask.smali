.class public Lcom/baidu/launcher/app/StrategyAlertTask;
.super Ljava/lang/Object;
.source "StrategyAlertTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private context:Landroid/content/Context;

.field private tableid:J

.field private time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0
    .parameter "context"
    .parameter "tableid"
    .parameter "t"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/baidu/launcher/app/StrategyAlertTask;->context:Landroid/content/Context;

    .line 16
    iput-wide p4, p0, Lcom/baidu/launcher/app/StrategyAlertTask;->time:J

    .line 17
    iput-wide p2, p0, Lcom/baidu/launcher/app/StrategyAlertTask;->tableid:J

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 23
    new-instance v0, Lcom/baidu/launcher/business/BusinessManager;

    invoke-direct {v0}, Lcom/baidu/launcher/business/BusinessManager;-><init>()V

    .line 24
    .local v0, businessManager:Lcom/baidu/launcher/business/BusinessManager;
    iget-object v1, p0, Lcom/baidu/launcher/app/StrategyAlertTask;->context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/launcher/app/StrategyAlertTask;->tableid:J

    iget-wide v4, p0, Lcom/baidu/launcher/app/StrategyAlertTask;->time:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/business/BusinessManager;->handleStrategy(Landroid/content/Context;JJ)V

    .line 25
    return-void
.end method
