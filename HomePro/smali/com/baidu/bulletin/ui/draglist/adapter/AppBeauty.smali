.class public Lcom/baidu/bulletin/ui/draglist/adapter/AppBeauty;
.super Ljava/lang/Object;
.source "AppBeauty.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beauty(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v3, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 19
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    invoke-direct {v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;-><init>()V

    .line 21
    .local v2, pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 22
    sget-object v4, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v4, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 27
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object v4, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 28
    iget-object v4, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    sget-object v4, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v4, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    goto :goto_1

    .line 33
    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v2           #pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    :cond_1
    return-object v3
.end method
