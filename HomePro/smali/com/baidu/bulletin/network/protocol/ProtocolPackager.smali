.class public Lcom/baidu/bulletin/network/protocol/ProtocolPackager;
.super Ljava/lang/Object;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/ProtocolPackager$15;,
        Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

.field private mObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/baidu/bulletin/http/HttpConnection;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpConnection;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    .line 45
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/http/HttpTask$State;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;)Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    return-object v0
.end method

.method private varargs buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "buffer"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;-><init>()V

    .line 229
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;->versions:[Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    .line 324
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;
    :goto_0
    return-object v1

    .line 231
    :cond_0
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;-><init>()V

    .line 233
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawChannel$Response;
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->id:Ljava/lang/String;

    .line 235
    iget-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->id:Ljava/lang/String;

    const-string v3, "history"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    .line 239
    .local v0, historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;
    new-instance v2, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;

    invoke-direct {v2, v0}, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;-><init>([Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)V

    invoke-virtual {v2}, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->get()[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    .line 240
    sget-object v2, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->TAG:Ljava/lang/String;

    const-string v3, "getHistoryToday"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v0           #historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;
    :cond_1
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    goto :goto_0

    .line 246
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawChannel$Response;
    :cond_2
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;-><init>()V

    .line 248
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/entity/ChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;->owner:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 249
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;->page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;

    goto :goto_0

    .line 251
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;
    :cond_3
    const-class v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    new-instance v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;-><init>()V

    .line 254
    .local v1, response:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object v2, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 255
    const-class v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    iput-object v2, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->item:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    goto :goto_0

    .line 257
    .end local v1           #response:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;
    :cond_4
    const-class v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 258
    new-instance v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;-><init>()V

    .line 260
    .local v1, response:Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object v2, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 261
    const-class v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->songItem:Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    goto/16 :goto_0

    .line 263
    .end local v1           #response:Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;
    :cond_5
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;-><init>()V

    .line 265
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    .line 266
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    goto/16 :goto_0

    .line 269
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;
    :cond_6
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 270
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;-><init>()V

    .line 271
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    .line 272
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->topic:I

    .line 273
    aget-object v2, p3, v4

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    goto/16 :goto_0

    .line 276
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;
    :cond_7
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 277
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;-><init>()V

    .line 278
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    .line 279
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->topic:I

    .line 280
    aget-object v2, p3, v4

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    goto/16 :goto_0

    .line 283
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;
    :cond_8
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 284
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;-><init>()V

    .line 285
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    .line 286
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->topic:I

    .line 287
    aget-object v2, p3, v4

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    goto/16 :goto_0

    .line 290
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;
    :cond_9
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 291
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;-><init>()V

    .line 292
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    .line 293
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    goto/16 :goto_0

    .line 296
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;
    :cond_a
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 297
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;-><init>()V

    .line 298
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    .line 299
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->newsId:J

    .line 300
    aget-object v2, p3, v4

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    goto/16 :goto_0

    .line 303
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;
    :cond_b
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 304
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;-><init>()V

    .line 305
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    .line 306
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->channelItemId:J

    .line 307
    aget-object v2, p3, v4

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    goto/16 :goto_0

    .line 310
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;
    :cond_c
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 311
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;-><init>()V

    .line 312
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;
    const-class v2, [Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    .line 313
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    .line 314
    aget-object v2, p3, v4

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    goto/16 :goto_0

    .line 317
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;
    :cond_d
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 318
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;-><init>()V

    .line 319
    .local v1, response:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;
    const-class v2, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    invoke-direct {p0, p2, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    .line 320
    aget-object v2, p3, v3

    check-cast v2, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    iput-object v2, v1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    goto/16 :goto_0

    .line 324
    .end local v1           #response:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private fromJson([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "buffer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 332
    .local v1, json:Ljava/lang/String;
    const-class v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const-string v2, "[{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "}]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_0
    invoke-static {v1, p2}, Lcom/baidu/bulletin/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 339
    .end local v1           #json:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 337
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 217
    sget-object v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$15;->$SwitchMap$com$baidu$bulletin$http$HttpTask$State:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/http/HttpTask$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 221
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpConnection;->cancelAll()V

    .line 344
    return-void
.end method

.method public requestAppChannel(Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 121
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$7;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$7;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;)V

    .line 129
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 130
    return-void
.end method

.method public requestAppListDetail(Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 181
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$12;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$12;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;)V

    .line 189
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 190
    return-void
.end method

.method public requestBulletinOpChannel(Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 205
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$14;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$14;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;)V

    .line 213
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 214
    return-void
.end method

.method public requestChannelItems(Lcom/baidu/bulletin/network/protocol/RawChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 73
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$3;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawChannel$Request;)V

    .line 81
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 82
    return-void
.end method

.method public requestHistoryChannel(Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 145
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$9;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$9;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;)V

    .line 153
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 154
    return-void
.end method

.method public requestImageChannel(Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 157
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$10;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$10;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;)V

    .line 165
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 166
    return-void
.end method

.method public requestMusicChannel(Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 133
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$8;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$8;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;)V

    .line 141
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 142
    return-void
.end method

.method public requestNativePage(Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$1;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;)V

    .line 57
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 58
    return-void
.end method

.method public requestNewsChannel(Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 109
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$6;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;)V

    .line 117
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 118
    return-void
.end method

.method public requestNewsDetail(Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 169
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;)V

    .line 177
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 178
    return-void
.end method

.method public requestOpChannel(Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 193
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$13;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$13;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;)V

    .line 201
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 202
    return-void
.end method

.method public requestTokenSong(Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 97
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$5;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$5;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;)V

    .line 105
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 106
    return-void
.end method

.method public requestTokenText(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 85
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$4;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$4;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;)V

    .line 93
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 94
    return-void
.end method

.method public requestUpdateInfo(Lcom/baidu/bulletin/network/protocol/RawUpdate$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 61
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;)V

    .line 69
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 70
    return-void
.end method
