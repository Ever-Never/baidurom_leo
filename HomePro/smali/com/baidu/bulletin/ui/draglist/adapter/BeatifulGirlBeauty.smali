.class public Lcom/baidu/bulletin/ui/draglist/adapter/BeatifulGirlBeauty;
.super Ljava/lang/Object;
.source "BeatifulGirlBeauty.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beauty(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
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
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v4, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    const/4 v2, 0x0

    .line 19
    .local v2, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 23
    .local v1, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    add-int/lit8 v2, v2, 0x1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 28
    .local v0, anotherChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    invoke-direct {v3}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;-><init>()V

    .line 29
    .local v3, pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    sget-object v6, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->BEAUTIFUL_GIRL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v6, v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 31
    const/4 v6, 0x2

    new-array v5, v6, [Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 32
    .local v5, twoChannelItemInfos:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 33
    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 35
    iput-object v5, v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 37
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v0           #anotherChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v1           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v3           #pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    .end local v5           #twoChannelItemInfos:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_1
    return-object v4
.end method
