.class public Lcom/baidu/launcher/business/item/RecommendResponceInfo;
.super Ljava/lang/Object;
.source "RecommendResponceInfo.java"


# instance fields
.field private app:[Lcom/baidu/launcher/business/item/RecommendAppItem;

.field private end:J

.field private folder:[Lcom/baidu/launcher/business/item/RecommendFolderItem;

.field private start:J

.field private store:[Lcom/baidu/launcher/business/item/RecommendAppItem;

.field private strategyId:J

.field private timer:J

.field private widget:[Lcom/baidu/launcher/business/item/RecommendAppItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()[Lcom/baidu/launcher/business/item/RecommendAppItem;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->app:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->end:J

    return-wide v0
.end method

.method public getFolder()[Lcom/baidu/launcher/business/item/RecommendFolderItem;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->folder:[Lcom/baidu/launcher/business/item/RecommendFolderItem;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->start:J

    return-wide v0
.end method

.method public getStore()[Lcom/baidu/launcher/business/item/RecommendAppItem;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->store:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    return-object v0
.end method

.method public getStrategyId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->strategyId:J

    return-wide v0
.end method

.method public getTimer()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->timer:J

    return-wide v0
.end method

.method public getWidget()[Lcom/baidu/launcher/business/item/RecommendAppItem;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->widget:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    return-object v0
.end method

.method public setStrategyId(J)V
    .locals 0
    .parameter "strategyId"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->strategyId:J

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendResponceInfo [strategyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->strategyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->timer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->app:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->widget:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->folder:[Lcom/baidu/launcher/business/item/RecommendFolderItem;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->store:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
