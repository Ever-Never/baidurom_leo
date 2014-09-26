.class public Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
.super Lcom/baidu/bulletin/entity/AbstractDetailEntity;
.source "ChannelItemPage.java"


# annotations
.annotation runtime Lcom/baidu/bulletin/database/Table;
    name = "channeldetails"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/entity/ChannelItemPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field public _id:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public channelId:J
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation

    .annotation runtime Lcom/baidu/bulletin/database/ManyToOne;
        cascadeType = Lcom/baidu/bulletin/entity/ChannelItem;
        foreignKey = "channelId"
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/baidu/bulletin/database/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/baidu/bulletin/entity/AbstractDetailEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 45
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 43
    .restart local v0       #path:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "image"

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelDetails [_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->channelId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
