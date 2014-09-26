.class public Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;,
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;,
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;,
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;,
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;,
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;,
        Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    }
.end annotation


# static fields
.field public static final API_Key:Ljava/lang/String; = "didGtEhBpQNQMmmFgQF7r6zP"

.field public static final Secret_Key:Ljava/lang/String; = "Xrj2QNOmSbGpVR5S053qM5krBqPNeKoz"

.field private static final TAG:Ljava/lang/String; = null

.field public static final accessTokenUrl:Ljava/lang/String; = "https://openapi.baidu.com/oauth/2.0/token?grant_type=client_credentials"

.field public static final appId:Ljava/lang/String; = "412499"


# instance fields
.field private mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

.field private mTextObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

.field private mTokenObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;-><init>(Lcom/baidu/bulletin/network/RequestAccessTokenManager;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTextObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    .line 59
    iput-object p1, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTokenObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    .line 60
    new-instance v0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTextObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;-><init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;)V

    iput-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/network/RequestAccessTokenManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/network/RequestAccessTokenManager;)Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTokenObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    return-object v0
.end method

.method private isAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "token"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->cancelAll()V

    .line 160
    return-void
.end method

.method public downloadSongInfo(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;)V
    .locals 2
    .parameter "tokenresponse"

    .prologue
    .line 145
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;-><init>()V

    .line 146
    .local v0, request:Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;
    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->item:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    iget-object v1, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;->access_token:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;->token:Ljava/lang/String;

    .line 147
    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;->songId:Ljava/lang/String;

    .line 150
    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object v1, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 151
    iget-object v1, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestTokenSong(Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;)V

    .line 152
    return-void
.end method

.method public downloadToken(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 138
    sget-object v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->TAG:Ljava/lang/String;

    const-string v2, "downloadToken >> "

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;-><init>()V

    .line 140
    .local v0, request:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;
    iput-object p1, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 141
    iget-object v1, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestTokenText(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;)V

    .line 142
    return-void
.end method

.method public downloadToken(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 132
    sget-object v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->TAG:Ljava/lang/String;

    const-string v2, "downloadToken >> "

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;

    invoke-direct {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;-><init>()V

    .line 134
    .local v0, request:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;
    iput-object p1, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;->channel:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 135
    iget-object v1, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mProtocolPackager:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestTokenText(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;)V

    .line 136
    return-void
.end method
