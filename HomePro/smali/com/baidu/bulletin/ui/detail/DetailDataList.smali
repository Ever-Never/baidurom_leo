.class public Lcom/baidu/bulletin/ui/detail/DetailDataList;
.super Ljava/lang/Object;
.source "DetailDataList.java"


# static fields
.field private static sDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;


# instance fields
.field private mChannelItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->sDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/ui/detail/DetailDataList;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->sDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailDataList;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/detail/DetailDataList;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->sDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    .line 22
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->sDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 87
    .restart local v0       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    return-object v0
.end method

.method public getCurrent()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    return v0
.end method

.method public getNext()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 60
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    .line 62
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 65
    .restart local v0       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    return-object v0
.end method

.method public getPre()Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    if-lez v1, :cond_0

    .line 72
    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    .line 73
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 76
    .restart local v0       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 7
    .parameter
    .parameter "currentChannelItemInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, channelItemPairs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    const/4 v6, 0x0

    iput v6, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    .line 35
    .local v2, channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    iget-object v6, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    if-eqz v6, :cond_0

    .line 37
    iget-object v0, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .local v0, arr$:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 39
    .local v1, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-eqz v1, :cond_1

    .line 40
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    .end local v0           #arr$:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v1           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v2           #channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mChannelItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/baidu/bulletin/ui/detail/DetailDataList;->mCurrentIndex:I

    .line 50
    return-void
.end method
