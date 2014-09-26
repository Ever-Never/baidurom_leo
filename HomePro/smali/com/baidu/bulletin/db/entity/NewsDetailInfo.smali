.class public Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
.super Ljava/lang/Object;
.source "NewsDetailInfo.java"


# static fields
.field public static final DETAILTYPE_IMG:I = 0x1

.field public static final DETAILTYPE_TEXT:I


# instance fields
.field public _id:J

.field public channelItemId:J

.field public data:Ljava/lang/String;

.field public imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(JLcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;)V
    .locals 3
    .parameter "newsId"
    .parameter "rawDetailItems"

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    .line 23
    iget v0, p3, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;->type:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    .line 24
    iget-object v0, p3, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    .line 25
    iget v0, p3, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;->type:I

    if-ne v0, v2, :cond_0

    .line 26
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, p3, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;->data:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewsDetailInfo [_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "channelItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ImageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 40
    :cond_0
    const-string v1, "]"

    goto :goto_0
.end method
