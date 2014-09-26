.class public Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;
.super Ljava/lang/Object;
.source "BulletinOpItemInfo.java"


# instance fields
.field public abs:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field public imgHeight:Ljava/lang/String;

.field public imgWidth:Ljava/lang/String;

.field public publishTime:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;)V
    .locals 3
    .parameter "bulletinOpChannelItem"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->title:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->abs:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->abs:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->startTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->startTime:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->endTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->endTime:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->createTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->createTime:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->publishTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->publishTime:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->url:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->version:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->imgWidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imgWidth:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->imgHeight:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imgHeight:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BulletinOpItemInfo [title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", abs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->abs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->endTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imgWidth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imgHeight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imageUri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v2, v2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
