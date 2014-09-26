.class public Lcom/baidu/yi/ads/service/AdSpaceParams;
.super Ljava/lang/Object;
.source "AdSpaceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/yi/ads/service/AdSpaceParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLimited:I

.field public mPluginId:I

.field private mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/yi/ads/service/AdSpaceParams$1;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/AdSpaceParams$1;-><init>()V

    .line 31
    sput-object v0, Lcom/baidu/yi/ads/service/AdSpaceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0xa0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mLimited:I

    .line 86
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    if-eq v0, v1, :cond_0

    .line 87
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->init(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "isLimited"
    .parameter "pId"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p2, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mLimited:I

    .line 95
    iput p3, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    .line 96
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 97
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-direct {v0}, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mLimited:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    .line 81
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 104
    iget v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_0

    .line 105
    iget v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const/16 v2, 0xa

    iput v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->n:I

    .line 107
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const/4 v2, 0x3

    iput v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->at:I

    .line 108
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, "baidu"

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->v:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, "debug_cpr"

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->q:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, "debug"

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->appid:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput v3, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->h:I

    .line 113
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput v3, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->w:I

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mQShiReq.h = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iget v2, v2, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQShiReq.w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iget v2, v2, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, model:Ljava/lang/String;
    const-string v1, " "

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object v0, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->tp:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$DeviceInfo;->getDeviceManufacture()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->brd:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, "android"

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->os:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$DeviceInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->bdr:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$DeviceInfo;->getDevWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->sw:I

    .line 124
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$DeviceInfo;->getDevHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->sh:I

    .line 125
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->sn:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, ""

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->cid:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, ""

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->nop:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, ""

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->g:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, ""

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->wi:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, ""

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->ip:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const/4 v2, 0x1

    iput v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->swi:I

    .line 132
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput v3, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->tab:I

    .line 133
    iget-object v1, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    const-string v2, "DL,LP,PH,SMS"

    iput-object v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->act:Ljava/lang/String;

    .line 136
    .end local v0           #model:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    return v0
.end method

.method public getQShiReq()Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    return-object v0
.end method

.method public isLimited()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mLimited:I

    return v0
.end method

.method public setAppIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "appid"
    .parameter "q"

    .prologue
    .line 146
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 147
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->appid:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object p2, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->q:Ljava/lang/String;

    .line 151
    :cond_1
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 154
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->channelId:Ljava/lang/String;

    .line 158
    :cond_1
    return-void
.end method

.method public setCompanyInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 168
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->v:Ljava/lang/String;

    .line 172
    :cond_1
    return-void
.end method

.method public setReqAct(Ljava/lang/String;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 188
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 189
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput-object p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->act:Ljava/lang/String;

    .line 192
    :cond_1
    return-void
.end method

.method public setReqImgSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 175
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 176
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    if-le p1, p2, :cond_2

    .line 178
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->h:I

    .line 179
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput p2, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->w:I

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput p2, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->h:I

    .line 182
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->w:I

    goto :goto_0
.end method

.method public setReqNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 139
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 140
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->n:I

    .line 143
    :cond_1
    return-void
.end method

.method public setReqType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 161
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    .line 162
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    iput p1, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->at:I

    .line 165
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 50
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mLimited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mQShiReq:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 53
    return-void
.end method
