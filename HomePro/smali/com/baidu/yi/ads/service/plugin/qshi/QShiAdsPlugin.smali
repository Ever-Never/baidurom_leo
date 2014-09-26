.class public Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;
.super Ljava/lang/Object;
.source "QShiAdsPlugin.java"

# interfaces
.implements Lcom/baidu/yi/ads/service/plugin/AdPlugin;


# static fields
.field private static final BUFFER_INCREMENT:I = 0x4000

.field public static final CLICK_URL_TEMPLATE:Ljava/lang/String; = "http://mobads.baidu.com/ad.html?url={0}&sn={1}&clk=1"

.field private static final INITIAL_IMAGE_BUFFER_SIZE:I = 0x2000

.field public static final SHOW_URL_PARAM_V:Ljava/lang/String; = "mgKGg1D8nafb"

.field public static final SHOW_URL_TEMPLATE:Ljava/lang/String; = "{0}&v={1}&extra2=nj0snjDsnj0snj0snj0sniskrHTsnjDsnH0snj0sn0Cb"


# instance fields
.field private mAdImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/ads/service/plugin/AdImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAdService:Lcom/baidu/yi/ads/service/AdService;

.field private mCurAdsIndex:I

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

.field private mProtocolPackagerObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

.field private mQShiAdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReqHeight:I

.field private mReqType:I

.field private mReqWidth:I


# direct methods
.method public constructor <init>(Lcom/baidu/yi/ads/service/AdService;I)V
    .locals 2
    .parameter "service"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    .line 38
    iput v1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    .line 39
    iput v1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqWidth:I

    .line 40
    iput v1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqHeight:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqType:I

    .line 388
    new-instance v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;-><init>(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mProtocolPackagerObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

    .line 57
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    .line 58
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 59
    new-instance v0, Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mProtocolPackagerObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

    invoke-direct {v0, v1}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;-><init>(Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Lcom/baidu/yi/ads/Ad;
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->getCachedAd()Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Lcom/baidu/yi/ads/service/AdService;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    return-object v0
.end method

.method private composeClickUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "origin"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, actionUrl:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, sn:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "http://mobads.baidu.com/ad.html?url={0}&sn={1}&clk=1"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, url:Ljava/lang/String;
    const-string v5, "{1}"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 228
    :try_start_0
    const-string v5, "utf8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v5, "{0}"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 235
    :goto_0
    return-object v4

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "url encoder exception"

    invoke-static {v5}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private composeShowUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "origin"

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{0}&v={1}&extra2=nj0snjDsnj0snj0snj0sniskrHTsnjDsnH0snj0sn0Cb"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, url:Ljava/lang/String;
    const-string v2, "{0}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, "{1}"

    const-string v3, "mgKGg1D8nafb"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 218
    return-object v1
.end method

.method private createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 7

    .prologue
    .line 86
    const/4 v4, 0x0

    .line 88
    .local v4, proxyPort:I
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, proxyHost:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 90
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 91
    if-gtz v4, :cond_0

    .line 92
    const/16 v4, 0x50

    .line 96
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 97
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 98
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v5, "http"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .local v2, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 101
    .end local v2           #proxy:Lorg/apache/http/HttpHost;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 103
    .local v1, p:Lorg/apache/http/params/HttpParams;
    return-object v0
.end method

.method private createTextAd(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;)Lcom/baidu/yi/ads/Ad;
    .locals 6
    .parameter "item"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    iget-object v3, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->tit:Ljava/lang/String;

    .line 295
    .local v3, title:Ljava/lang/String;
    iget-object v1, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->desc:Ljava/lang/String;

    .line 297
    .local v1, desc:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Text ad. Title="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Desc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 298
    new-instance v0, Lcom/baidu/yi/ads/Ad;

    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    invoke-direct {v0}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 299
    .restart local v0       #ad:Lcom/baidu/yi/ads/Ad;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 300
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Lcom/baidu/yi/ads/Ad;->setMimeType(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, v3}, Lcom/baidu/yi/ads/Ad;->setTitle(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/Ad;->setDesc(Ljava/lang/String;)V

    .line 305
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/yi/ads/Ad;->setText(Ljava/lang/String;)V

    .line 309
    return-object v0
.end method

.method private doRequestAd(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;III)Lcom/baidu/yi/ads/Ad;
    .locals 3
    .parameter "params"
    .parameter "limited"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 241
    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    .line 242
    iput p3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqWidth:I

    .line 243
    iput p4, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqHeight:I

    .line 245
    if-nez p2, :cond_0

    .line 246
    new-instance v0, Lcom/baidu/yi/ads/Ad;

    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    invoke-direct {v0}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 247
    .restart local v0       #ad:Lcom/baidu/yi/ads/Ad;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 248
    iget-object v2, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/yi/ads/Ad;->setURL(Ljava/lang/String;)V

    move-object v1, v0

    .line 253
    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    .local v1, ad:Lcom/baidu/yi/ads/Ad;
    :goto_0
    return-object v1

    .line 252
    .end local v1           #ad:Lcom/baidu/yi/ads/Ad;
    .restart local v0       #ad:Lcom/baidu/yi/ads/Ad;
    :cond_0
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mProtocolPackager:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    invoke-virtual {v2, p1}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->requestAds(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;)V

    move-object v1, v0

    .line 253
    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    .restart local v1       #ad:Lcom/baidu/yi/ads/Ad;
    goto :goto_0
.end method

.method private getCachedAd()Lcom/baidu/yi/ads/Ad;
    .locals 15

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, ad:Lcom/baidu/yi/ads/Ad;
    const/4 v9, 0x0

    .line 110
    .local v9, theAdImage:Lcom/baidu/yi/ads/service/plugin/AdImage;
    iget-object v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    if-eqz v13, :cond_d

    iget-object v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_d

    .line 111
    iget v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    iget-object v14, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_d

    .line 112
    iget-object v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    iget v14, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;

    .line 113
    .local v6, item:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->w_picurl:Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 114
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->w_picurl:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->getImage(Ljava/lang/String;)Lcom/baidu/yi/ads/service/plugin/AdImage;

    move-result-object v2

    .line 116
    .local v2, adImage:Lcom/baidu/yi/ads/service/plugin/AdImage;
    if-eqz v2, :cond_5

    .line 117
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->type:Ljava/lang/String;

    const-string v14, "text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 118
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setContentType(I)V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 124
    .local v3, b:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 125
    .local v12, w:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 127
    .local v5, h:I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Image width = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 129
    const/4 v13, 0x1

    if-gt v12, v13, :cond_1

    const/4 v13, 0x1

    if-le v5, v13, :cond_5

    .line 130
    :cond_1
    const/4 v11, 0x3

    .line 132
    .local v11, type:I
    iget v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 133
    const/4 v11, 0x1

    .line 135
    :cond_2
    move-object v9, v2

    .line 136
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v7, sb:Ljava/lang/StringBuffer;
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->tit:Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->tit:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 139
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->tit:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setTitle(Ljava/lang/String;)V

    .line 140
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->tit:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v2, v11}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setContentType(I)V

    .line 143
    :cond_3
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->desc:Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->desc:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 144
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->desc:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setDesc(Ljava/lang/String;)V

    .line 145
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->desc:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v2, v11}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setContentType(I)V

    .line 149
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 150
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, text:Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setText(Ljava/lang/String;)V

    .line 157
    .end local v2           #adImage:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v5           #h:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v8           #text:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #w:I
    :cond_5
    if-eqz v9, :cond_f

    .line 158
    new-instance v1, Lcom/baidu/yi/ads/Ad;

    .end local v1           #ad:Lcom/baidu/yi/ads/Ad;
    invoke-direct {v1}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 159
    .restart local v1       #ad:Lcom/baidu/yi/ads/Ad;
    invoke-virtual {v9}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/baidu/yi/ads/Ad;->setMimeType(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v9}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getContentType()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 163
    invoke-virtual {v9}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/baidu/yi/ads/Ad;->setImage(Landroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {v9}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getText()Ljava/lang/String;

    move-result-object v8

    .line 167
    .restart local v8       #text:Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    .line 168
    invoke-virtual {v1, v8}, Lcom/baidu/yi/ads/Ad;->setText(Ljava/lang/String;)V

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Mixed ad. Text = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 171
    :cond_6
    invoke-virtual {v9}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 173
    invoke-virtual {v1, v10}, Lcom/baidu/yi/ads/Ad;->setTitle(Ljava/lang/String;)V

    .line 174
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Mixed ad. Title = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 176
    :cond_7
    invoke-virtual {v9}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, desc:Ljava/lang/String;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 178
    invoke-virtual {v1, v4}, Lcom/baidu/yi/ads/Ad;->setDesc(Ljava/lang/String;)V

    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Mixed ad. Desc = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 185
    .end local v4           #desc:Ljava/lang/String;
    .end local v8           #text:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 186
    iget-wide v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->id:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/baidu/yi/ads/Ad;->setAdId(Ljava/lang/String;)V

    .line 189
    :cond_9
    if-eqz v1, :cond_b

    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->curl:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 190
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Ad action type = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->act:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Ad action curl = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->curl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/baidu/yi/ads/Ad$Action;

    iget v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->act:I

    iget-object v14, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->curl:Ljava/lang/String;

    invoke-direct {p0, v14}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->composeClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v13, v14}, Lcom/baidu/yi/ads/Ad$Action;-><init>(ILjava/lang/String;)V

    .line 193
    .local v0, a:Lcom/baidu/yi/ads/Ad$Action;
    iget v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->act:I

    const/16 v14, 0x20

    if-ne v13, v14, :cond_a

    .line 194
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Ad action phone number = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->phone:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 195
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->phone:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/baidu/yi/ads/Ad$Action;->setDesc(Ljava/lang/String;)V

    .line 198
    :cond_a
    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/Ad;->addAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 201
    .end local v0           #a:Lcom/baidu/yi/ads/Ad$Action;
    :cond_b
    if-eqz v1, :cond_c

    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->clklogurl:Ljava/lang/String;

    if-eqz v13, :cond_c

    .line 203
    new-instance v0, Lcom/baidu/yi/ads/Ad$Action;

    const/16 v13, 0x80

    iget-object v14, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->clklogurl:Ljava/lang/String;

    invoke-direct {p0, v14}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->composeShowUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v13, v14}, Lcom/baidu/yi/ads/Ad$Action;-><init>(ILjava/lang/String;)V

    .line 204
    .restart local v0       #a:Lcom/baidu/yi/ads/Ad$Action;
    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/Ad;->addAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 206
    .end local v0           #a:Lcom/baidu/yi/ads/Ad$Action;
    :cond_c
    iget v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    .line 208
    .end local v6           #item:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;
    :cond_d
    return-object v1

    .line 119
    .restart local v2       #adImage:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v6       #item:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;
    :cond_e
    iget-object v13, v6, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;->type:Ljava/lang/String;

    const-string v14, "image"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 120
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setContentType(I)V

    goto/16 :goto_0

    .line 182
    .end local v2           #adImage:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :cond_f
    const-string v13, "No image on ad"

    invoke-static {v13}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, v6}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->createTextAd(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;)Lcom/baidu/yi/ads/Ad;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private getImage(Ljava/lang/String;)Lcom/baidu/yi/ads/service/plugin/AdImage;
    .locals 20
    .parameter "urlStr"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 321
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 325
    const-string v17, "Image cached, not download"

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/baidu/yi/ads/service/plugin/AdImage;

    .line 385
    :goto_0
    return-object v17

    .line 329
    :cond_1
    const/4 v2, 0x0

    .line 332
    .local v2, adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Downloading image. URL="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 334
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 336
    .local v13, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 338
    .local v8, connectTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 340
    .local v16, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 342
    .local v10, contentType:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Content type "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 344
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 346
    .local v14, is:Ljava/io/InputStream;
    const/16 v11, 0x2000

    .line 347
    .local v11, curSize:I
    new-array v5, v11, [B

    .line 348
    .local v5, buf:[B
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 349
    .local v7, bytesRead:I
    const/4 v15, 0x0

    .line 350
    .local v15, pos:I
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_2

    .line 360
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 362
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Time to retrieve image = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v8

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 364
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Image size = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 366
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v5, v0, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 368
    .local v4, b:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    .line 369
    new-instance v3, Lcom/baidu/yi/ads/service/plugin/AdImage;

    invoke-direct {v3, v4, v10}, Lcom/baidu/yi/ads/service/plugin/AdImage;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 370
    .end local v2           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .local v3, adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #buf:[B
    .end local v7           #bytesRead:I
    .end local v8           #connectTime:J
    .end local v10           #contentType:Ljava/lang/String;
    .end local v11           #curSize:I
    .end local v13           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #pos:I
    .end local v16           #resp:Lorg/apache/http/HttpResponse;
    .restart local v2       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :goto_2
    move-object/from16 v17, v2

    .line 385
    goto/16 :goto_0

    .line 351
    .restart local v5       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v8       #connectTime:J
    .restart local v10       #contentType:Ljava/lang/String;
    .restart local v11       #curSize:I
    .restart local v13       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v15       #pos:I
    .restart local v16       #resp:Lorg/apache/http/HttpResponse;
    :cond_2
    add-int/2addr v15, v7

    .line 352
    if-ne v15, v11, :cond_3

    .line 353
    add-int/lit16 v0, v11, 0x4000

    move/from16 v17, v0

    :try_start_2
    move/from16 v0, v17

    new-array v6, v0, [B

    .line 354
    .local v6, buf2:[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    add-int/lit16 v11, v11, 0x4000

    .line 356
    move-object v5, v6

    .line 358
    .end local v6           #buf2:[B
    :cond_3
    sub-int v17, v11, v15

    move/from16 v0, v17

    invoke-virtual {v14, v5, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    goto :goto_1

    .line 372
    .restart local v4       #b:Landroid/graphics/Bitmap;
    :cond_4
    const-string v17, "Bitmap is null"

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 374
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #buf:[B
    .end local v7           #bytesRead:I
    .end local v8           #connectTime:J
    .end local v10           #contentType:Ljava/lang/String;
    .end local v11           #curSize:I
    .end local v13           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #pos:I
    .end local v16           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v12

    .line 375
    .local v12, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 376
    .end local v12           #e:Ljava/io/IOException;
    :catch_1
    move-exception v12

    .line 379
    .local v12, e:Ljava/lang/NullPointerException;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->createHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 380
    const-string v17, "Error on network connection."

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logE(Ljava/lang/String;)V

    goto :goto_2

    .line 381
    .end local v12           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v12

    .line 383
    .local v12, e:Ljava/lang/IllegalStateException;
    :goto_5
    const-string v17, "Bad image URL."

    invoke-static/range {v17 .. v17}, Lcom/baidu/yi/ads/service/AdService;->logE(Ljava/lang/String;)V

    goto :goto_2

    .line 381
    .end local v2           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .end local v12           #e:Ljava/lang/IllegalStateException;
    .restart local v3       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v5       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v8       #connectTime:J
    .restart local v10       #contentType:Ljava/lang/String;
    .restart local v11       #curSize:I
    .restart local v13       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v15       #pos:I
    .restart local v16       #resp:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v12

    move-object v2, v3

    .end local v3           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v2       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    goto :goto_5

    .line 376
    .end local v2           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v3       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :catch_4
    move-exception v12

    move-object v2, v3

    .end local v3           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v2       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    goto :goto_4

    .line 374
    .end local v2           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v3       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :catch_5
    move-exception v12

    move-object v2, v3

    .end local v3           #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    .restart local v2       #adImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    goto :goto_3
.end method


# virtual methods
.method public getAd(Lcom/baidu/yi/ads/service/plugin/Raw$RawRequest;III)Lcom/baidu/yi/ads/Ad;
    .locals 4
    .parameter "params"
    .parameter "limited"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    instance-of v2, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    if-nez v2, :cond_2

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 282
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v1, p1

    .line 265
    check-cast v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    .line 266
    .local v1, req:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;
    iget v2, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->at:I

    iput v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqType:I

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request ad. Width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cached  ad. Width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 272
    iget v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqWidth:I

    if-ne v2, p3, :cond_3

    iget v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mReqHeight:I

    if-ne v2, p4, :cond_3

    .line 273
    iget v2, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I

    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 274
    :cond_3
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->doRequestAd(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;III)Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->getCachedAd()Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 5

    .prologue
    .line 66
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 76
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    .line 78
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/plugin/AdImage;

    .line 69
    .local v0, ad:Lcom/baidu/yi/ads/service/plugin/AdImage;
    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
