.class public Lcom/baidu/bulletin/db/entity/AppDetailInfo;
.super Ljava/lang/Object;
.source "AppDetailInfo.java"


# instance fields
.field public _id:J

.field public appId:J

.field public appName:Ljava/lang/String;

.field public channelItemId:J

.field public docId:Ljava/lang/String;

.field public downloadCount:Ljava/lang/String;

.field public imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field public packageName:Ljava/lang/String;

.field public score:Ljava/lang/String;

.field public size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(JLcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;)V
    .locals 3
    .parameter "itemId"
    .parameter "appDetailItems"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->channelItemId:J

    .line 26
    iget-wide v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appId:J

    .line 27
    iget-object v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    .line 28
    iget-object v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    .line 29
    iget-wide v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->score:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    .line 30
    iget-wide v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->size:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    .line 31
    iget-object v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->downloadCount:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    .line 32
    iget-wide v0, p3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->docId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x2

    invoke-virtual {p0, p3}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->getSuitableIconUrl(Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 35
    return-void
.end method


# virtual methods
.method public getSuitableIconUrl(Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;)Ljava/lang/String;
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-static {}, Lcom/baidu/bulletin/ui/screen/Screen;->getInstance()Lcom/baidu/bulletin/ui/screen/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/screen/Screen;->getDPI()I

    move-result v0

    .line 44
    .local v0, dpiSize:I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 45
    :cond_0
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->iconLow:Ljava/lang/String;

    .line 51
    :goto_0
    return-object v1

    .line 46
    :cond_1
    if-ne v0, v2, :cond_2

    .line 47
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->icon:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 49
    :cond_3
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->iconHigh:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_4
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;->icon:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppDetailInfo [_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "channelItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->channelItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", downloadCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", docId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ImageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 57
    :cond_0
    const-string v1, "]"

    goto :goto_0
.end method
