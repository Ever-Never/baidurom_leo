.class public Lcom/baidu/bulletin/DataRepository;
.super Ljava/lang/Object;
.source "DataRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/DataRepository$ChannelVersion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSingleton:Lcom/baidu/bulletin/DataRepository;


# instance fields
.field private mChannelItemDAO:Lcom/baidu/bulletin/dao/ChannelItemDAO;

.field private mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/baidu/bulletin/DataRepository;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;-><init>(Lcom/baidu/bulletin/DataRepository;)V

    iput-object v0, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/DataRepository;)Lcom/baidu/bulletin/dao/ChannelItemDAO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/DataRepository;)Lcom/baidu/bulletin/DataRepository$ChannelVersion;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    return-object v0
.end method

.method private channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository;->mChannelItemDAO:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->getChannelDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/DataRepository;->mChannelItemDAO:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository;->mChannelItemDAO:Lcom/baidu/bulletin/dao/ChannelItemDAO;

    return-object v0
.end method

.method private checkAndUpdateChannelItems(Ljava/lang/String;I)Z
    .locals 8
    .parameter "channelName"
    .parameter "pageFixed"

    .prologue
    const/4 v6, 0x0

    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, needUpdate:Z
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/DataRepository;->queryChannelItems(Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 375
    .local v3, items:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v3, :cond_2

    .line 376
    move-object v0, v3

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 377
    .local v2, item:Lcom/baidu/bulletin/entity/ChannelItem;
    iget v7, v2, Lcom/baidu/bulletin/entity/ChannelItem;->pageFixed:I

    if-eq v7, p2, :cond_0

    .line 378
    const/4 v5, 0x1

    .line 379
    iput p2, v2, Lcom/baidu/bulletin/entity/ChannelItem;->pageFixed:I

    .line 380
    iput v6, v2, Lcom/baidu/bulletin/entity/ChannelItem;->pageID:I

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v2           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    if-eqz v5, :cond_2

    .line 384
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/baidu/bulletin/DataRepository;->update([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 385
    sget-object v6, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    const-string v7, "in checkAndUpdateChannelItems(), saved..."

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v6, 0x1

    .line 389
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #i$:I
    .end local v4           #len$:I
    :cond_2
    return v6
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/DataRepository;->mSingleton:Lcom/baidu/bulletin/DataRepository;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/DataRepository;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/bulletin/DataRepository;->mSingleton:Lcom/baidu/bulletin/DataRepository;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/baidu/bulletin/DataRepository;

    invoke-direct {v0}, Lcom/baidu/bulletin/DataRepository;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/DataRepository;->mSingleton:Lcom/baidu/bulletin/DataRepository;

    .line 32
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/DataRepository;->mSingleton:Lcom/baidu/bulletin/DataRepository;

    return-object v0
.end method

.method private handleRemoveFileWithNewThead(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, removeFileSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v1, Lcom/baidu/bulletin/DataRepository$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/DataRepository$1;-><init>(Lcom/baidu/bulletin/DataRepository;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/baidu/bulletin/DataRepository$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    const-string v2, "in handleRemoveFileWithNewThead error"

    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeCanceledChannelFileWithNewThead(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, removeFileSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v1, Lcom/baidu/bulletin/DataRepository$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/DataRepository$2;-><init>(Lcom/baidu/bulletin/DataRepository;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/baidu/bulletin/DataRepository$2;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    const-string v2, "in removeCanceledChannelFileWithNewThead error"

    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    return-object v0
.end method

.method public checkFileInDatabase(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;)Z
    .locals 22
    .parameter "version"

    .prologue
    .line 247
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    invoke-static {v15}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 248
    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->low:J

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/DataRepository;->queryChannelItemsForCheck(JLjava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v4

    .line 249
    .local v4, ChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    const/4 v13, 0x0

    .line 250
    .local v13, needUpdata:Z
    const-wide/16 v6, -0x1

    .line 251
    .local v6, currnt:J
    if-eqz v4, :cond_0

    array-length v15, v4

    if-lez v15, :cond_0

    .line 252
    move-object v5, v4

    .local v5, arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    array-length v12, v5

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v12, :cond_0

    aget-object v11, v5, v9

    .line 253
    .local v11, item:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    if-eqz v15, :cond_1

    iget-object v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    .line 254
    new-instance v8, Ljava/io/File;

    iget-object v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 256
    sget-object v15, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "has image unfit item with id:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v11, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v15}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getAll()Ljava/util/Map;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Lcom/baidu/bulletin/entity/Channel$Version;

    iget-wide v0, v11, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/entity/Channel$Version;-><init>(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;J)V

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v13, 0x1

    .line 259
    iget-wide v6, v11, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    .line 277
    .end local v5           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v8           #file:Ljava/io/File;
    .end local v9           #i$:I
    .end local v11           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v12           #len$:I
    :cond_0
    :goto_1
    if-eqz v13, :cond_4

    const-wide/16 v15, 0x0

    cmp-long v15, v6, v15

    if-lez v15, :cond_4

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v6, v7, v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryRemoveIdFitDatabase(JLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 279
    .local v14, removeId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-class v15, Lcom/baidu/bulletin/entity/ChannelItem;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "channelId=\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' AND id>="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/baidu/bulletin/DataRepository;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    .line 280
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 281
    .local v10, id:Ljava/lang/Integer;
    sget-object v15, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "channelId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-class v15, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "channelId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/baidu/bulletin/DataRepository;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    .end local v10           #id:Ljava/lang/Integer;
    .end local v14           #removeId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5       #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .local v9, i$:I
    .restart local v11       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    .restart local v12       #len$:I
    :cond_1
    const-string v15, "music"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 264
    iget v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    iget-object v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 265
    new-instance v8, Ljava/io/File;

    iget-object v15, v11, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v8       #file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 267
    sget-object v15, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "has music file unfit item with id:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v11, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v15}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getAll()Ljava/util/Map;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->channel:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Lcom/baidu/bulletin/entity/Channel$Version;

    iget-wide v0, v11, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/entity/Channel$Version;-><init>(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;J)V

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/4 v13, 0x1

    .line 270
    iget-wide v6, v11, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    .line 271
    goto/16 :goto_1

    .line 252
    .end local v8           #file:Ljava/io/File;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 287
    .end local v4           #ChannelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v5           #arr$:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v6           #currnt:J
    .end local v9           #i$:I
    .end local v11           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v12           #len$:I
    .end local v13           #needUpdata:Z
    :cond_3
    const/4 v13, 0x0

    :cond_4
    return v13
.end method

.method public closeDatabase()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->close()V

    .line 219
    return-void
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter "clazz"
    .parameter "selection"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public deleteCanceledChannelInfo()I
    .locals 15

    .prologue
    const-wide/16 v13, 0x1

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, count:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v5, removeFileSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCanceledChannel()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 397
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCanceledChannel()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    .local v4, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9, v4}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCanceledChannelVersion(Ljava/lang/String;)Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    move-result-object v8

    .line 399
    .local v8, version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    iget-wide v9, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    add-long/2addr v9, v13

    iput-wide v9, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    .line 400
    iget-wide v9, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    invoke-virtual {p0, v9, v10, v4}, Lcom/baidu/bulletin/DataRepository;->queryRemoveFiles(JLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 401
    .local v6, removeFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 402
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 406
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #removeFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 407
    invoke-direct {p0, v5}, Lcom/baidu/bulletin/DataRepository;->removeCanceledChannelFileWithNewThead(Ljava/util/Map;)V

    .line 410
    :cond_2
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCanceledChannel()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 411
    .restart local v4       #key:Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9, v4}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCanceledChannelVersion(Ljava/lang/String;)Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    move-result-object v8

    .line 412
    .restart local v8       #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    iget-wide v9, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    add-long/2addr v9, v13

    iput-wide v9, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    .line 413
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v9

    iget-wide v10, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    invoke-interface {v9, v10, v11, v4}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryRemoveId(JLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 414
    .local v7, removeId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-class v9, Lcom/baidu/bulletin/entity/ChannelItem;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND id<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v8, Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;->up:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/baidu/bulletin/DataRepository;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    .line 415
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 416
    .local v3, id:Ljava/lang/Integer;
    sget-object v9, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-class v9, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/baidu/bulletin/DataRepository;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 420
    .end local v3           #id:Ljava/lang/Integer;
    :cond_3
    sget-object v9, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Delete CanceledChannel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " complete >>>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 423
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #removeId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    :cond_4
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCanceledChannel()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 425
    :cond_5
    return v0
.end method

.method public metabolismData()I
    .locals 13

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, count:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v5, removeFileSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    .local v4, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9, v4}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;

    move-result-object v8

    .line 296
    .local v8, version:Lcom/baidu/bulletin/entity/Channel$Version;
    invoke-virtual {v8}, Lcom/baidu/bulletin/entity/Channel$Version;->low()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10, v4}, Lcom/baidu/bulletin/DataRepository;->queryRemoveFiles(JLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 297
    .local v6, removeFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", REMOVEFILES SIZE IS "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 299
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 303
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #removeFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #version:Lcom/baidu/bulletin/entity/Channel$Version;
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 304
    invoke-direct {p0, v5}, Lcom/baidu/bulletin/DataRepository;->handleRemoveFileWithNewThead(Ljava/util/Map;)V

    .line 307
    :cond_2
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .restart local v4       #key:Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/bulletin/DataRepository;->mChannelVersion:Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    invoke-virtual {v9, v4}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->get(Ljava/lang/String;)Lcom/baidu/bulletin/entity/Channel$Version;

    move-result-object v8

    .line 310
    .restart local v8       #version:Lcom/baidu/bulletin/entity/Channel$Version;
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v9

    invoke-virtual {v8}, Lcom/baidu/bulletin/entity/Channel$Version;->low()J

    move-result-wide v10

    invoke-interface {v9, v10, v11, v4}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryRemoveId(JLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 311
    .local v7, removeId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-class v9, Lcom/baidu/bulletin/entity/ChannelItem;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND id<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/baidu/bulletin/entity/Channel$Version;->low()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/baidu/bulletin/DataRepository;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    .line 312
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 313
    .local v3, id:Ljava/lang/Integer;
    sget-object v9, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-class v9, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/baidu/bulletin/DataRepository;->delete(Ljava/lang/Class;Ljava/lang/String;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 317
    .end local v3           #id:Ljava/lang/Integer;
    :cond_3
    sget-object v9, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Delete "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " complete >>>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #removeId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #version:Lcom/baidu/bulletin/entity/Channel$Version;
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/bulletin/DataRepository;->deleteCanceledChannelInfo()I

    move-result v9

    add-int/2addr v0, v9

    .line 320
    sget-object v9, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/baidu/bulletin/DataRepository;->refreshChannelContent()Z

    .line 327
    return v0
.end method

.method public queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "channel"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryDetail(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public queryChannelItem(JLjava/lang/String;)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "id"
    .parameter "channelId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p3, p1, p2}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryChannelItem(Ljava/lang/String;J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public queryChannelItems(Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "channelId"

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryChannelItems(Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public queryChannelItemsForCheck(JLjava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "id"
    .parameter "channelId"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryChannelItemsForCheck(JLjava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public queryMaxPageId()I
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryMaxPageId()I

    move-result v0

    return v0
.end method

.method public queryNeedBriefImageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2

    .prologue
    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryNeedBriefImageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryNeedBriefImageChannelItemByPage(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryNeedBriefImageChannelItemByPage(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryNeedDetailChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2

    .prologue
    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryNeedDetailChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryRemoveFiles(JLjava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "id"
    .parameter "channelId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryRemoveFiles(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySameFileWithAttachement(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "id"
    .parameter "channelId"
    .parameter "filepath"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->querySameFileWithAttachement(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public querySameFileWithItem(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "id"
    .parameter "channelId"
    .parameter "filepath"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->querySameFileWithItem(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryUnDoPageChannelItems()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryUnDoPageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryUnfixedChannelItems()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryUnfixedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryUnpagedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryUnpagedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshChannelContent()Z
    .locals 9

    .prologue
    .line 356
    invoke-static {}, Lcom/baidu/bulletin/entity/Channel$Id;->getAllChannelId()[Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, allChannels:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 358
    .local v5, needRefeshUi:Z
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 359
    .local v2, channel:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isChannelSubscribed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/baidu/bulletin/DataRepository;->checkAndUpdateChannelItems(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 361
    const/4 v5, 0x1

    .line 358
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, v2, v6}, Lcom/baidu/bulletin/DataRepository;->checkAndUpdateChannelItems(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    const/4 v5, 0x1

    goto :goto_1

    .line 367
    .end local v2           #channel:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/baidu/bulletin/DataRepository;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needRefeshUi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return v5
.end method

.method public save([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->insert([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 129
    return-void
.end method

.method public saveDetail(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/baidu/bulletin/entity/AbstractDetailEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<+Lcom/baidu/bulletin/entity/AbstractDetailEntity;>;"
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->insertDetail(Ljava/util/List;)V

    .line 144
    return-void
.end method

.method public saveDetail([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 1
    .parameter "entities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->insertDetail([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 139
    return-void
.end method

.method public saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 5
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    iget-wide v3, p1, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->queryChannelItem(Ljava/lang/String;J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 120
    .local v0, channelDis:Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->update(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->insert(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_0
.end method

.method public update([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->update([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 133
    return-void
.end method

.method public updateDetail(Lcom/baidu/bulletin/entity/AbstractDetailEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->updateDetail(Lcom/baidu/bulletin/entity/AbstractDetailEntity;)V

    .line 155
    return-void
.end method

.method public updateDetail(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 1
    .parameter "entity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/baidu/bulletin/DataRepository;->channelItemDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/dao/ChannelItemDAO;->updateDetail(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 151
    return-void
.end method
