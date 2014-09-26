.class public Lcom/baidu/bulletin/network/logic/NetworkDataManager;
.super Ljava/lang/Object;
.source "NetworkDataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/IDataManager;


# static fields
.field private static mcuid:Ljava/lang/String;


# instance fields
.field private final AppName:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

.field private mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

.field private mTaskCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "aContext"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z

    .line 41
    const-string v1, "bulletin"

    iput-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->AppName:Ljava/lang/String;

    .line 42
    const-string v1, "NetworkDataManager"

    iput-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->TAG:Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;-><init>(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)V

    iput-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    .line 45
    new-instance v1, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackagerObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    invoke-direct {v1, v2}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;)V

    iput-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/StatService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {p1}, Lcom/baidu/mobstat/StatService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z

    return v0
.end method

.method private requestAppChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V
    .locals 2
    .parameter "count"
    .parameter "topic"
    .parameter "version"
    .parameter "direct"
    .parameter "callback"

    .prologue
    .line 332
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;-><init>()V

    .line 333
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;
    iput p2, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->topic:I

    .line 334
    iput p1, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->count:I

    .line 335
    iput p5, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->direct:I

    .line 336
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->version:J

    .line 337
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->appName:Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->cuid:Ljava/lang/String;

    .line 339
    iput-object p6, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    .line 340
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestAppChannel(Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;)V

    .line 341
    return-void
.end method

.method private requestHistoryChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V
    .locals 2
    .parameter "count"
    .parameter "topic"
    .parameter "version"
    .parameter "direct"
    .parameter "callback"

    .prologue
    .line 361
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;-><init>()V

    .line 362
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;
    iput p2, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->topic:I

    .line 363
    iput p1, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->count:I

    .line 364
    iput p5, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->direct:I

    .line 365
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->version:J

    .line 366
    const-string v1, "history"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->channelId:Ljava/lang/String;

    .line 367
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->appName:Ljava/lang/String;

    .line 368
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->cuid:Ljava/lang/String;

    .line 369
    iput-object p6, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    .line 370
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestHistoryChannel(Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;)V

    .line 371
    return-void
.end method

.method private requestImageChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V
    .locals 2
    .parameter "count"
    .parameter "topic"
    .parameter "version"
    .parameter "direct"
    .parameter "callback"

    .prologue
    .line 376
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;-><init>()V

    .line 377
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;
    add-int/lit16 v1, p2, -0xbb8

    iput v1, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->topic:I

    .line 378
    iput p1, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->count:I

    .line 379
    iput p5, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->direct:I

    .line 380
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->appName:Ljava/lang/String;

    .line 381
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->cuid:Ljava/lang/String;

    .line 382
    iput-object p6, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    .line 383
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->version:J

    .line 384
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestImageChannel(Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;)V

    .line 385
    return-void
.end method

.method private requestMusicChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V
    .locals 2
    .parameter "count"
    .parameter "topic"
    .parameter "version"
    .parameter "direct"
    .parameter "callback"

    .prologue
    .line 346
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;-><init>()V

    .line 347
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;
    iput p2, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->topic:I

    .line 348
    iput p1, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->count:I

    .line 349
    iput p5, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->direct:I

    .line 350
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->version:J

    .line 351
    const-string v1, "music"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->channelId:Ljava/lang/String;

    .line 352
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->appName:Ljava/lang/String;

    .line 353
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->cuid:Ljava/lang/String;

    .line 354
    iput-object p6, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    .line 355
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestMusicChannel(Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;)V

    .line 356
    return-void
.end method

.method private requestNewsChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V
    .locals 2
    .parameter "count"
    .parameter "topic"
    .parameter "version"
    .parameter "direct"
    .parameter "callback"

    .prologue
    .line 318
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;-><init>()V

    .line 319
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;
    iput p2, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->topic:I

    .line 320
    iput p1, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->count:I

    .line 321
    iput p5, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->direct:I

    .line 322
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->version:J

    .line 323
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->appName:Ljava/lang/String;

    .line 324
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->cuid:Ljava/lang/String;

    .line 325
    iput-object p6, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    .line 326
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestNewsChannel(Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;)V

    .line 327
    return-void
.end method

.method private subString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "aData"
    .parameter "aLength"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 62
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->cancelAll()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z

    .line 56
    return-void
.end method

.method public requestApplist(Lcom/baidu/bulletin/RequestCallback$ApplistCallback;Ljava/lang/String;J)V
    .locals 2
    .parameter "callback"
    .parameter "content"
    .parameter "channelItemId"

    .prologue
    .line 429
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;-><init>()V

    .line 430
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;
    iput-object p2, v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->content:Ljava/lang/String;

    .line 431
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->channelItemId:J

    .line 432
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->cuid:Ljava/lang/String;

    .line 433
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->appName:Ljava/lang/String;

    .line 434
    iput-object p1, v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    .line 435
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestAppListDetail(Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;)V

    .line 437
    return-void
.end method

.method public requestBulletinOpInfo(Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 464
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;-><init>()V

    .line 465
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;->cuid:Ljava/lang/String;

    .line 466
    iput-object p1, v0, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    .line 467
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestBulletinOpChannel(Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;)V

    .line 468
    return-void
.end method

.method public requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
    .locals 7
    .parameter "callback"
    .parameter "maxCount"
    .parameter "topic"
    .parameter "maxVersion"

    .prologue
    const/16 v3, 0xfa0

    const/16 v2, 0xbb8

    const/16 v1, 0x7d0

    const/16 v0, 0x3e8

    const/4 v5, 0x1

    .line 392
    if-ltz p3, :cond_1

    if-ge p3, v0, :cond_1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 393
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestNewsChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    if-lt p3, v0, :cond_2

    if-ge p3, v1, :cond_2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 395
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestAppChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    goto :goto_0

    .line 396
    :cond_2
    if-lt p3, v1, :cond_3

    if-ge p3, v2, :cond_3

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 397
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestMusicChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    goto :goto_0

    .line 398
    :cond_3
    if-lt p3, v2, :cond_4

    if-ge p3, v3, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 399
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestImageChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    goto :goto_0

    .line 400
    :cond_4
    if-ne p3, v3, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 401
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestHistoryChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    goto :goto_0
.end method

.method public requestNewsDetail(Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Ljava/lang/String;J)V
    .locals 2
    .parameter "callback"
    .parameter "content"
    .parameter "channelItemId"

    .prologue
    .line 441
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;-><init>()V

    .line 442
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;
    iput-object p2, v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->content:Ljava/lang/String;

    .line 443
    iput-wide p3, v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->newsId:J

    .line 444
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->cuid:Ljava/lang/String;

    .line 445
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->appName:Ljava/lang/String;

    .line 446
    iput-object p1, v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    .line 447
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestNewsDetail(Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;)V

    .line 449
    return-void
.end method

.method public requestOldChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
    .locals 7
    .parameter "callback"
    .parameter "maxCount"
    .parameter "topic"
    .parameter "minVersion"

    .prologue
    const/16 v3, 0xbb8

    const/16 v2, 0x7d0

    const/16 v1, 0x3ea

    const/16 v0, 0x3e8

    const/4 v5, -0x1

    .line 408
    if-ltz p3, :cond_1

    if-ge p3, v0, :cond_1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 409
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestNewsChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    if-lt p3, v0, :cond_2

    if-ge p3, v2, :cond_2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 411
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestAppChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    goto :goto_0

    .line 412
    :cond_2
    if-lt p3, v2, :cond_3

    if-ge p3, v3, :cond_3

    .line 413
    if-eqz p1, :cond_0

    .line 414
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 416
    :cond_3
    if-lt p3, v3, :cond_4

    const/16 v0, 0xfa0

    if-ge p3, v0, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p1

    .line 417
    invoke-direct/range {v0 .. v6}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->requestImageChannelItems(IIJILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V

    goto :goto_0

    .line 418
    :cond_4
    const/16 v0, 0xfa0

    if-ne p3, v0, :cond_0

    .line 419
    if-eqz p1, :cond_0

    .line 420
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public requestOpInfo(Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Ljava/lang/String;I)V
    .locals 2
    .parameter "callback"
    .parameter "channelName"
    .parameter "topic"

    .prologue
    .line 453
    new-instance v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;-><init>()V

    .line 454
    .local v0, request:Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;
    new-instance v1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    invoke-direct {v1, p2, p3}, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    .line 455
    sget-object v1, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mcuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->cuid:Ljava/lang/String;

    .line 456
    const-string v1, "bulletin"

    iput-object v1, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->appName:Ljava/lang/String;

    .line 457
    iput-object p1, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    .line 458
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestOpChannel(Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;)V

    .line 460
    return-void
.end method
