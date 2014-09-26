.class public Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;
.super Ljava/lang/Object;
.source "NewsBeaty.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;


# static fields
.field private static final BIG_PIC:I = 0x0

.field private static final NO_PIC:I = 0x2

.field private static final SMALL_PIC:I = 0x1


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->mCount:I

    return-void
.end method

.method private beautySingle(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    .locals 6
    .parameter "channelItemInfo"

    .prologue
    const/4 v5, 0x2

    .line 63
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;-><init>()V

    .line 65
    .local v0, channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    new-array v1, v5, [Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 66
    .local v1, pairInfos:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 67
    iput-object v1, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 69
    const-string v2, "tt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelItemInfo.imageInfo.imgUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 72
    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v2, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 79
    :cond_0
    :goto_0
    const-string v2, "tt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v0

    .line 73
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 74
    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v2, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v2, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    goto :goto_0
.end method

.method private beautyTwo([Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    .locals 7
    .parameter "twoChannelItemInfo"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;-><init>()V

    .line 88
    .local v0, channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    iput-object p1, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 90
    aget-object v1, p1, v5

    .line 91
    .local v1, left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    aget-object v2, p1, v4

    .line 93
    .local v2, right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_0
    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 95
    :cond_1
    iget v3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->mCount:I

    if-nez v3, :cond_2

    .line 96
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_HAVE_PIC_LEFT_BIG_RIGHT_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 97
    iput v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->mCount:I

    .line 113
    :goto_0
    return-object v0

    .line 99
    :cond_2
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_HAVE_PIC_LEFT_SMALL_RIGHT_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 100
    iput v5, p0, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->mCount:I

    goto :goto_0

    .line 102
    :cond_3
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 104
    :cond_4
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->RIGHT_HAVE_LEFT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    goto :goto_0

    .line 105
    :cond_5
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-ne v3, v4, :cond_7

    :cond_6
    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 107
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->LEFT_HAVE_RIGHT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    goto :goto_0

    .line 109
    :cond_7
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    iput-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    goto :goto_0
.end method

.method private getPicType(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I
    .locals 4
    .parameter "channelItemInfo"

    .prologue
    .line 118
    const/4 v0, 0x2

    .line 119
    .local v0, picType:I
    invoke-static {}, Lcom/baidu/bulletin/ui/screen/Screen;->getInstance()Lcom/baidu/bulletin/ui/screen/Screen;

    move-result-object v1

    .line 121
    .local v1, screen:Lcom/baidu/bulletin/ui/screen/Screen;
    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v2, v2, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 122
    const/4 v0, 0x2

    .line 134
    :goto_0
    return v0

    .line 124
    :cond_0
    iget v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/screen/Screen;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    iget v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/screen/Screen;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    iget v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/screen/Screen;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x4

    if-lt v2, v3, :cond_2

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public beauty(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
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
    .local p1, channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    .local v4, isSingle:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v5, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    const/4 v3, 0x0

    .line 28
    .local v3, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 33
    .local v1, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-eqz v4, :cond_0

    .line 34
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->beautySingle(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    move-result-object v2

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 55
    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    if-nez v4, :cond_2

    move v4, v7

    .line 58
    :goto_2
    goto :goto_0

    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 40
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 43
    .local v0, anotherChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const/4 v9, 0x2

    new-array v6, v9, [Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 44
    .local v6, twoChannelItemInfos:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    aput-object v1, v6, v8

    .line 45
    aput-object v0, v6, v7

    .line 47
    invoke-direct {p0, v6}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->beautyTwo([Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    move-result-object v2

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1

    .line 50
    .end local v0           #anotherChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v6           #twoChannelItemInfos:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/NewsBeaty;->beautySingle(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    move-result-object v2

    goto :goto_1

    :cond_2
    move v4, v8

    .line 57
    goto :goto_2

    .line 59
    .end local v1           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v2           #channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    :cond_3
    return-object v5
.end method
