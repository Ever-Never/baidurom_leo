.class public Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
.super Ljava/lang/Object;
.source "ChannelItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;
    }
.end annotation


# static fields
.field public static final AppBase:I = 0x3e8

.field public static final Economic:I = 0x5

.field public static final Entertainment:I = 0x3

.field public static final HistoryBase:I = 0xfa0

.field public static final Hotpot:I = 0x1

.field public static final ImageBase:I = 0xbb8

.field public static final Internet:I = 0x8

.field public static final Military:I = 0x2

.field public static final ModelPhoto:I = 0xbba

.field public static final MusicBase:I = 0x7d0

.field public static final NewsBase:I = 0x0

.field public static final NoTopic:I = -0x1

.field public static final Science:I = 0x4

.field public static final SelfBeauty:I = 0xbbb

.field public static final SexyPhoto:I = 0xbb9

.field public static final Sports:I = 0x6

.field public static final SuperModel:I = 0xbbc

.field public static final Woman:I = 0x7


# instance fields
.field public _id:J

.field public brief:Ljava/lang/String;

.field public channelId:I

.field public content:Ljava/lang/String;

.field public imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

.field public imgHeight:I

.field public imgWidth:I

.field public sourceUrl:Ljava/lang/String;

.field public task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

.field public timestamp:J

.field public title:Ljava/lang/String;

.field public uploaded:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;-><init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    .line 70
    return-void
.end method

.method public constructor <init>(ILcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;)V
    .locals 4
    .parameter "topic"
    .parameter "item"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;-><init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    .line 89
    if-eqz p2, :cond_0

    .line 90
    iput p1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 91
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->version:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 92
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 93
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 94
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->abs:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 95
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->time:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 96
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->imageHeight:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 97
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->imageWidth:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;->image:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 101
    :cond_0
    return-void
.end method

.method public constructor <init>(ILcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)V
    .locals 4
    .parameter "topic"
    .parameter "item"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;-><init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iput p1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 121
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 122
    invoke-direct {p0, p2}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->convertContent(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 123
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 124
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->brief:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 125
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->time:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 126
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->imgHeight:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 127
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->imgWidth:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->img:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 131
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->brief:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(ILcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;)V
    .locals 4
    .parameter "topic"
    .parameter "item"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;-><init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    .line 134
    if-eqz p2, :cond_0

    .line 135
    add-int/lit16 v0, p1, 0xbb8

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 136
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;->version:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 137
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 138
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;->thumbHeight:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 139
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;->thumbWidth:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 140
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;->thumb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 143
    :cond_0
    return-void
.end method

.method public constructor <init>(ILcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;)V
    .locals 4
    .parameter "topic"
    .parameter "item"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;-><init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    iput p1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 106
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->id:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 107
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 108
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->brief:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 110
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->time:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 111
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->imgHeight:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 112
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->imgWidth:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;->img:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 116
    :cond_0
    return-void
.end method

.method public constructor <init>(ILcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;)V
    .locals 4
    .parameter "topic"
    .parameter "item"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;-><init>(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;JI)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->task:Lcom/baidu/bulletin/db/entity/ChannelItemInfo$OfflineTask;

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iput p1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 76
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->version:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 77
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 78
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 79
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->abs:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 80
    iget-wide v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->time:J

    iput-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 81
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->imageHeight:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 82
    iget v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->imageWidth:I

    iput v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 83
    iget-object v0, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;->image:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 86
    :cond_0
    return-void
.end method

.method private convertContent(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)Ljava/lang/String;
    .locals 5
    .parameter "historyTodayItem"

    .prologue
    .line 146
    const-string v2, "["

    .line 148
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 150
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aget-object v0, v3, v1

    .line 151
    .local v0, desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v0           #desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    return-object v2
.end method


# virtual methods
.method public isSame(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    iget-wide v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelItemInfo [_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brief="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sourceUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgwidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ImageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    :cond_0
    const-string v1, "]"

    goto :goto_0
.end method
