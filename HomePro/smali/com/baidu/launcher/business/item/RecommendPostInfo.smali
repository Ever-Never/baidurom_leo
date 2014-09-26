.class public Lcom/baidu/launcher/business/item/RecommendPostInfo;
.super Ljava/lang/Object;
.source "RecommendPostInfo.java"


# instance fields
.field private cuid:Ljava/lang/String;

.field private strategyId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendPostInfo;->cuid:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategyId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendPostInfo;->strategyId:J

    return-wide v0
.end method

.method public setCuid(Ljava/lang/String;)V
    .locals 0
    .parameter "cuid"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendPostInfo;->cuid:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setStrategyId(J)V
    .locals 0
    .parameter "strategyId"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/baidu/launcher/business/item/RecommendPostInfo;->strategyId:J

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendPostInfo [cuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendPostInfo;->cuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strategyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendPostInfo;->strategyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
