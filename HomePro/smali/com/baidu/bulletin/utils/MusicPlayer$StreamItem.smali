.class Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamItem"
.end annotation


# instance fields
.field private mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mFiledownloadCalledOnce:Z

.field private mFiledownloadCancelled:Z

.field private mFiledownloadcalled:Z

.field private mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

.field private mRequestTokenCallbacked:Z

.field private mRequestTokenCalledOnce:Z

.field private mRequestTokenCancelled:Z

.field private mRequestTokenSent:Z

.field private mResetDateOnce:Z

.field private mSetDataSourceOnce:Z

.field private mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field final synthetic this$0:Lcom/baidu/bulletin/utils/MusicPlayer;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter
    .parameter "channel"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 415
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter
    .parameter "channel"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 411
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;-><init>(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/entity/ChannelItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCancelled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCancelled:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCallbacked:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->createRequest()V

    return-void
.end method

.method static synthetic access$2500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->cancelRequest()V

    return-void
.end method

.method static synthetic access$2700(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCalledOnce:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCalledOnce:Z

    return p1
.end method

.method static synthetic access$302(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadcalled:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mSetDataSourceOnce:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mSetDataSourceOnce:Z

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mResetDateOnce:Z

    return v0
.end method

.method static synthetic access$502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mResetDateOnce:Z

    return p1
.end method

.method private cancelRequest()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->cancelAll()V

    .line 428
    return-void
.end method

.method private createRequest()V
    .locals 2

    .prologue
    .line 419
    new-instance v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mRequestObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$2400(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;-><init>(Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    .line 421
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestAccessTokenManager:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->downloadToken(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z

    .line 423
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenSent:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 424
    return-void
.end method

.method private setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 432
    return-void
.end method
