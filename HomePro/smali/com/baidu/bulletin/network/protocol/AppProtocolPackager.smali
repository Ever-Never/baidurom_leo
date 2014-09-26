.class public Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;
.super Ljava/lang/Object;
.source "AppProtocolPackager.java"

# interfaces
.implements Lcom/baidu/bulletin/network/protocol/IProtocolPakager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppProtocolPackager"


# instance fields
.field private mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

.field private mObserver:Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;

.field private mRequest:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/network/protocol/RawAppList$Request;Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;)V
    .locals 1
    .parameter "request"
    .parameter "observer"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/baidu/bulletin/http/HttpConnection;

    invoke-direct {v0}, Lcom/baidu/bulletin/http/HttpConnection;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    .line 17
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mRequest:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;

    .line 18
    iput-object p2, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;Lcom/baidu/bulletin/http/HttpTask$State;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;)Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;

    return-object v0
.end method

.method private httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 39
    sget-object v0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$2;->$SwitchMap$com$baidu$bulletin$http$HttpTask$State:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/http/HttpTask$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 39
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
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    invoke-virtual {v0}, Lcom/baidu/bulletin/http/HttpConnection;->cancelAll()V

    .line 36
    return-void
.end method

.method public request()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;-><init>(Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;)V

    .line 30
    .local v0, task:Lcom/baidu/bulletin/http/HttpTask;
    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mHttpConnection:Lcom/baidu/bulletin/http/HttpConnection;

    iget-object v2, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mRequest:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;

    invoke-static {v0, v2}, Lcom/baidu/bulletin/network/UrlManager;->buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpConnection;->send(Lcom/baidu/bulletin/http/HttpTask;)Z

    .line 31
    return-void
.end method
