.class public final Lcom/baidu/yi/ads/service/AdService;
.super Landroid/app/Service;
.source "AdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/AdService$AdRequest;
    }
.end annotation


# static fields
.field public static final LOCAL_ADS_PLUGIN_ID:I = 0x10

.field private static final LOCAL_ADS_PLUGIN_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "YiAdView"

.field public static final NO_PLUGIN:I = 0x0

.field public static final QShi_PLUGIN_ID:I = 0xa0

.field private static final QShi_PLUGIN_INDEX:I = 0x1

.field private static final TOTAL_NUMBER_OF_PLUGINS:I = 0x3

.field public static final Yi_PLUGIN_ID:I = 0x2a

.field private static final Yi_PLUGIN_INDEX:I = 0x2


# instance fields
.field private final mBinder:Lcom/baidu/yi/ads/service/IAdService$Stub;

.field private mCltAdReqListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/ads/service/IAdRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

.field private mRequestProcessingThread:Ljava/lang/Thread;

.field private mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/baidu/yi/ads/service/AdService$AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Lcom/baidu/yi/ads/service/AdService$1;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/service/AdService$1;-><init>(Lcom/baidu/yi/ads/service/AdService;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mBinder:Lcom/baidu/yi/ads/service/IAdService$Stub;

    .line 201
    const-string v0, "YiAdView"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {p0}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->init(Landroid/content/Context;)V

    .line 203
    new-instance v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    .line 204
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/yi/ads/service/AdService;->mDestroyed:Z

    .line 206
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestProcessingThread:Ljava/lang/Thread;

    .line 207
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestProcessingThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 208
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/service/AdService;Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/yi/ads/service/AdService;->getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V

    return-void
.end method

.method static synthetic access$1(Lcom/baidu/yi/ads/service/AdService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/yi/ads/service/AdService;->executeAction(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/baidu/yi/ads/service/AdService;)Lcom/baidu/yi/ads/AdViewBackground;
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/AdService;->getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;

    move-result-object v0

    return-object v0
.end method

.method private executeAction(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "actionType"
    .parameter "destination"
    .parameter "desc"

    .prologue
    const/high16 v4, 0x1000

    .line 433
    const/16 v2, 0x80

    if-ne p1, v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/baidu/yi/ads/service/AdService;->mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    invoke-virtual {v2, p2}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->sendAdsNotice(Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v1, 0x0

    .line 439
    .local v1, intent:Landroid/content/Intent;
    sparse-switch p1, :sswitch_data_0

    .line 478
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v1}, Lcom/baidu/yi/ads/service/AdService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    :sswitch_1
    iget-object v2, p0, Lcom/baidu/yi/ads/service/AdService;->mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    invoke-virtual {v2, p2}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->sendAdsNotice(Ljava/lang/String;)V

    .line 442
    if-eqz p3, :cond_0

    .line 449
    invoke-static {p3}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->dial(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 457
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 461
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 465
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 466
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 468
    .local v0, content_url:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 469
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v1}, Lcom/baidu/yi/ads/service/AdService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 473
    .end local v0           #content_url:Landroid/net/Uri;
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 439
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V
    .locals 2
    .parameter "params"
    .parameter "adListener"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 354
    new-instance v0, Lcom/baidu/yi/ads/service/AdService$AdRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/baidu/yi/ads/service/AdService$AdRequest;-><init>(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V

    .line 355
    .local v0, adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method private getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;
    .locals 10

    .prologue
    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, normalCenter:I
    const/4 v5, 0x0

    .line 270
    .local v5, focusCenter:I
    const/4 v8, 0x0

    .line 271
    .local v8, pressedCenter:I
    const/4 v1, 0x0

    .line 272
    .local v1, normalTop:I
    const/4 v3, 0x0

    .line 273
    .local v3, normalBottom:I
    const/4 v4, 0x0

    .line 274
    .local v4, focusTop:I
    const/4 v6, 0x0

    .line 275
    .local v6, focusBottom:I
    const/4 v7, 0x0

    .line 276
    .local v7, pressedTop:I
    const/4 v9, 0x0

    .line 278
    .local v9, pressedBottom:I
    new-instance v0, Lcom/baidu/yi/ads/AdViewBackground;

    invoke-direct/range {v0 .. v9}, Lcom/baidu/yi/ads/AdViewBackground;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method private getPlugin(I)Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    .locals 6
    .parameter "pluginId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    sparse-switch p1, :sswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :sswitch_0
    const-string v1, "Local ads plugin selected"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    aget-object v0, v1, v3

    .line 323
    if-nez v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    new-instance v0, Lcom/baidu/yi/ads/service/plugin/local/LocalAdsPlugin;

    .end local v0           #plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    const/16 v2, 0x10

    invoke-direct {v0, p0, v2}, Lcom/baidu/yi/ads/service/plugin/local/LocalAdsPlugin;-><init>(Lcom/baidu/yi/ads/service/AdService;I)V

    aput-object v0, v1, v3

    .line 326
    .restart local v0       #plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    goto :goto_0

    .line 328
    :sswitch_1
    const-string v1, "QShi plugin selected"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    aget-object v0, v1, v4

    .line 330
    if-nez v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    new-instance v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    .end local v0           #plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    const/16 v2, 0xa0

    invoke-direct {v0, p0, v2}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;-><init>(Lcom/baidu/yi/ads/service/AdService;I)V

    aput-object v0, v1, v4

    .line 333
    .restart local v0       #plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    goto :goto_0

    .line 335
    :sswitch_2
    const-string v1, "Yi plugin selected"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    aget-object v0, v1, v5

    .line 337
    if-nez v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    new-instance v0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    .end local v0           #plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    const/16 v2, 0x2a

    invoke-direct {v0, p0, v2}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;-><init>(Lcom/baidu/yi/ads/service/AdService;I)V

    aput-object v0, v1, v5

    .restart local v0       #plugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x2a -> :sswitch_2
        0xa0 -> :sswitch_1
    .end sparse-switch
.end method

.method static isValidPluginId(I)Z
    .locals 1
    .parameter "pluginId"

    .prologue
    .line 138
    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    .line 139
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    .line 140
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    .line 138
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 490
    const-string v0, "YiAdView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "YiAdView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 512
    const-string v0, "YiAdView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "YiAdView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 501
    const-string v0, "YiAdView"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "YiAdView"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    return-void
.end method

.method private readImage(I)[B
    .locals 7
    .parameter "imgid"

    .prologue
    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, ret:[B
    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/baidu/yi/ads/service/AdService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 295
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 296
    .local v0, avail:I
    new-array v5, v0, [B

    .line 297
    const/4 v3, 0x0

    .line 298
    .local v3, offset:I
    const/4 v4, 0x0

    .line 300
    .local v4, read:I
    :cond_0
    add-int/2addr v3, v4

    .line 301
    sub-int v6, v0, v3

    invoke-virtual {v2, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 302
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 299
    if-lt v3, v0, :cond_0

    .line 307
    .end local v0           #avail:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #offset:I
    .end local v4           #read:I
    :cond_1
    :goto_0
    return-object v5

    .line 303
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 304
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAdClientNotice(Lcom/baidu/yi/ads/Ad;)V
    .locals 3
    .parameter "ad"

    .prologue
    const/4 v2, 0x0

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 362
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/IAdRequestListener;

    invoke-interface {v0, p1}, Lcom/baidu/yi/ads/service/IAdRequestListener;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 366
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    .line 366
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 367
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 223
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mBinder:Lcom/baidu/yi/ads/service/IAdService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->plugins:[Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    .line 216
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 217
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "YiAdView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/service/AdService;->mDestroyed:Z

    .line 249
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 250
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 229
    const-string v2, "onUnbind"

    invoke-static {v2}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 230
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lcom/baidu/yi/ads/service/AdService;->getPlugin(I)Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    .line 231
    .local v0, adPlugin:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->releaseResources()V

    .line 234
    :cond_0
    const/16 v2, 0xa0

    invoke-direct {p0, v2}, Lcom/baidu/yi/ads/service/AdService;->getPlugin(I)Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    .line 235
    .local v1, p:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;
    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->releaseResources()V

    .line 238
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public run()V
    .locals 13

    .prologue
    .line 376
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/baidu/yi/ads/service/AdService;->mDestroyed:Z

    if-eqz v9, :cond_1

    .line 424
    return-void

    .line 378
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/baidu/yi/ads/service/AdService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/yi/ads/service/AdService$AdRequest;

    .line 379
    .local v3, adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    if-eqz v3, :cond_0

    .line 382
    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/AdService$AdRequest;->getAdReqParams()Lcom/baidu/yi/ads/service/AdSpaceParams;

    move-result-object v5

    .line 383
    .local v5, params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/AdService$AdRequest;->getAdListener()Lcom/baidu/yi/ads/service/IAdRequestListener;

    move-result-object v1

    .line 385
    .local v1, adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    if-nez v5, :cond_2

    .line 386
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lcom/baidu/yi/ads/service/IAdRequestListener;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 414
    .end local v1           #adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .end local v3           #adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    .end local v5           #params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    :catch_0
    move-exception v4

    .line 415
    .local v4, e:Landroid/os/RemoteException;
    const-string v9, "YiAdView"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v9, "Exception calling ad listener"

    invoke-static {v9}, Lcom/baidu/yi/ads/service/AdService;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v1       #adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .restart local v3       #adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    .restart local v5       #params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/baidu/yi/ads/service/AdSpaceParams;->getPluginId()I

    move-result v6

    .line 390
    .local v6, pluginId:I
    if-nez v6, :cond_3

    .line 391
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lcom/baidu/yi/ads/service/IAdRequestListener;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 417
    .end local v1           #adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .end local v3           #adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    .end local v5           #params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    .end local v6           #pluginId:I
    :catch_1
    move-exception v4

    .line 418
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v9, "YiAdView"

    const-string v10, "InterruptedException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v9, "Ad request processing thread interrupted"

    invoke-static {v9}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v4           #e:Ljava/lang/InterruptedException;
    .restart local v1       #adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .restart local v3       #adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    .restart local v5       #params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    .restart local v6       #pluginId:I
    :cond_3
    :try_start_2
    invoke-direct {p0, v6}, Lcom/baidu/yi/ads/service/AdService;->getPlugin(I)Lcom/baidu/yi/ads/service/plugin/AdPlugin;

    move-result-object v2

    .line 396
    .local v2, adPlugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    if-nez v2, :cond_4

    .line 397
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lcom/baidu/yi/ads/service/IAdRequestListener;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 420
    .end local v1           #adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .end local v2           #adPlugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    .end local v3           #adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    .end local v5           #params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    .end local v6           #pluginId:I
    :catch_2
    move-exception v4

    .line 421
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "YiAdView"

    const-string v10, "Exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #adListener:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .restart local v2       #adPlugin:Lcom/baidu/yi/ads/service/plugin/AdPlugin;
    .restart local v3       #adReq:Lcom/baidu/yi/ads/service/AdService$AdRequest;
    .restart local v5       #params:Lcom/baidu/yi/ads/service/AdSpaceParams;
    .restart local v6       #pluginId:I
    :cond_4
    :try_start_3
    const-string v9, "About to request ad from plugin"

    invoke-static {v9}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 403
    .local v7, requestTime:J
    invoke-virtual {v5}, Lcom/baidu/yi/ads/service/AdSpaceParams;->getQShiReq()Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    move-result-object v9

    invoke-virtual {v5}, Lcom/baidu/yi/ads/service/AdSpaceParams;->isLimited()I

    move-result v10

    .line 404
    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/AdService$AdRequest;->getWidht()I

    move-result v11

    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/AdService$AdRequest;->getHeight()I

    move-result v12

    .line 403
    invoke-interface {v2, v9, v10, v11, v12}, Lcom/baidu/yi/ads/service/plugin/AdPlugin;->getAd(Lcom/baidu/yi/ads/service/plugin/Raw$RawRequest;III)Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    .line 406
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Time to get ad: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 408
    if-nez v0, :cond_5

    .line 409
    iget-object v9, p0, Lcom/baidu/yi/ads/service/AdService;->mCltAdReqListenerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 413
    :cond_5
    invoke-interface {v1, v0}, Lcom/baidu/yi/ads/service/IAdRequestListener;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
