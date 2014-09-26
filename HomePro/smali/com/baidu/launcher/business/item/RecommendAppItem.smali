.class public Lcom/baidu/launcher/business/item/RecommendAppItem;
.super Ljava/lang/Object;
.source "RecommendAppItem.java"


# instance fields
.field private apk:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private height:I

.field private icon:Ljava/lang/String;

.field private iconbmp:Landroid/graphics/Bitmap;

.field private id:J

.field private locate:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packagename:Ljava/lang/String;

.field private rank:I

.field private strategyId:J

.field private versioncode:J

.field private versionname:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->height:I

    .line 26
    iput v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->width:I

    .line 27
    return-void
.end method


# virtual methods
.method public getApk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->apk:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->height:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconbmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->iconbmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->id:J

    return-wide v0
.end method

.method public getLocate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->locate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->rank:I

    return v0
.end method

.method public getStrategyId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->strategyId:J

    return-wide v0
.end method

.method public getVersioncode()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->versioncode:J

    return-wide v0
.end method

.method public getVersionname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->versionname:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->width:I

    return v0
.end method

.method public setApk(Ljava/lang/String;)V
    .locals 0
    .parameter "apk"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->apk:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->description:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 134
    iput p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->height:I

    .line 135
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->icon:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIconbmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "iconbmp"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->iconbmp:Landroid/graphics/Bitmap;

    .line 87
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->id:J

    .line 99
    return-void
.end method

.method public setLocate(Ljava/lang/String;)V
    .locals 0
    .parameter "locate"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->locate:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0
    .parameter "packagename"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->packagename:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .parameter "rank"

    .prologue
    .line 130
    iput p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->rank:I

    .line 131
    return-void
.end method

.method public setStrategyId(J)V
    .locals 0
    .parameter "strategyId"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->strategyId:J

    .line 91
    return-void
.end method

.method public setVersioncode(J)V
    .locals 0
    .parameter "versioncode"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->versioncode:J

    .line 119
    return-void
.end method

.method public setVersionname(Ljava/lang/String;)V
    .locals 0
    .parameter "versionname"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->versionname:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 138
    iput p1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->width:I

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendAppItem [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconbmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->iconbmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->apk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versioncode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->versioncode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->versionname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->locate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strategyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/RecommendAppItem;->strategyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
