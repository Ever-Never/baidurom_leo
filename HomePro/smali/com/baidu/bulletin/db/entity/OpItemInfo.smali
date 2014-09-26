.class public Lcom/baidu/bulletin/db/entity/OpItemInfo;
.super Ljava/lang/Object;
.source "OpItemInfo.java"


# static fields
.field public static final CHANNELTYPE_HISTORY:Ljava/lang/String; = "history"

.field public static final CHANNELTYPE_NEWS:Ljava/lang/String; = "news"

.field public static final CHANNELTYPE_PICTURE:Ljava/lang/String; = "picture"


# instance fields
.field public _id:J

.field public channel:Ljava/lang/String;

.field public imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field public imgHeight:I

.field public imgWidth:I

.field public opId:J

.field public opUrl:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public priority:I

.field public showUrl:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public topic:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;)V
    .locals 3
    .parameter "opTopic"
    .parameter "rawOpChannelItem"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;->channelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->channel:Ljava/lang/String;

    .line 29
    iget v0, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;->topic:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->topic:I

    .line 30
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opId:J

    .line 31
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    .line 32
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->imageHeight:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgHeight:I

    .line 33
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->imageWidth:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgWidth:I

    .line 34
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->prority:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->priority:I

    .line 35
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    .line 36
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    .line 37
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->showUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->showUrl:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpItemInfo [channelName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", topic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->topic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", opId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgwidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", opUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->showUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
