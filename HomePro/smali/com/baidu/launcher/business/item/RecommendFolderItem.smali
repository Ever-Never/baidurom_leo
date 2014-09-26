.class public Lcom/baidu/launcher/business/item/RecommendFolderItem;
.super Ljava/lang/Object;
.source "RecommendFolderItem.java"


# instance fields
.field private appList:[Lcom/baidu/launcher/business/item/RecommendAppItem;

.field private id:I

.field private locate:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rank:I

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
.method public getAppList()[Lcom/baidu/launcher/business/item/RecommendAppItem;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->appList:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->id:I

    return v0
.end method

.method public getLocate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->locate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->rank:I

    return v0
.end method

.method public getStrategyId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->strategyId:J

    return-wide v0
.end method

.method public setStrategyId(J)V
    .locals 0
    .parameter "strategyId"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->strategyId:J

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendFolderItem [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->appList:[Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->locate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/business/item/RecommendFolderItem;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
