.class public Lcom/baidu/yi/ads/service/network/ProtocolPackager;
.super Ljava/lang/Object;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpTask$State:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHttpConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

.field private mObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;


# direct methods
.method static synthetic $SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpTask$State()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->$SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpTask$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->values()[Lcom/baidu/yi/ads/service/http/HttpTask$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Canceled:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Failed:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Finished:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Idel:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Receiving:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpTask$State;->Sending:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->$SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpTask$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpConnection;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/http/HttpConnection;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mHttpConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpConnection;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/http/HttpConnection;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mHttpConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    .line 21
    iput-object p1, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/service/network/ProtocolPackager;Lcom/baidu/yi/ads/service/http/HttpTask$State;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->httpFinished(Lcom/baidu/yi/ads/service/http/HttpTask$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/baidu/yi/ads/service/network/ProtocolPackager;)Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/baidu/yi/ads/service/network/ProtocolPackager;Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private varargs buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 62
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;-><init>()V

    .line 64
    .local v0, response:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;
    const-class v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    invoke-direct {p0, p2, v1}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    iput-object v1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    .line 67
    .end local v0           #response:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fromJson([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    .line 73
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 75
    .local v0, json:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/baidu/yi/ads/service/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .end local v0           #json:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v1

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private httpFinished(Lcom/baidu/yi/ads/service/http/HttpTask$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 52
    invoke-static {}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->$SWITCH_TABLE$com$baidu$yi$ads$service$http$HttpTask$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/yi/ads/service/http/HttpTask$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mHttpConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/http/HttpConnection;->cancelAll()V

    .line 83
    return-void
.end method

.method public requestAds(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;-><init>(Lcom/baidu/yi/ads/service/network/ProtocolPackager;)V

    .line 37
    .local v0, task:Lcom/baidu/yi/ads/service/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mHttpConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    invoke-static {v0, p1}, Lcom/baidu/yi/ads/service/network/UrlManager;->buildRequest(Lcom/baidu/yi/ads/service/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/yi/ads/service/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/yi/ads/service/http/HttpConnection;->send(Lcom/baidu/yi/ads/service/http/HttpTask;)Z

    .line 38
    return-void
.end method

.method public sendAdsNotice(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 41
    new-instance v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$2;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/service/network/ProtocolPackager$2;-><init>(Lcom/baidu/yi/ads/service/network/ProtocolPackager;)V

    .line 47
    .local v0, task:Lcom/baidu/yi/ads/service/http/HttpTask;
    iget-object v1, v0, Lcom/baidu/yi/ads/service/http/HttpTask;->mRequest:Lcom/baidu/yi/ads/service/http/HttpParam$Request;

    iput-object p1, v1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mHttpConnection:Lcom/baidu/yi/ads/service/http/HttpConnection;

    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/service/http/HttpConnection;->send(Lcom/baidu/yi/ads/service/http/HttpTask;)Z

    .line 49
    return-void
.end method
